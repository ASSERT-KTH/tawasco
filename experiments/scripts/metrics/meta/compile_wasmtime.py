from schema import *


WASMTIME=os.environ.get("WASMTIME", "wasmtime")

connect()

'''
    Get the blake3 hash of the binaryen wasm file.
'''
def get_wasm_blake3_hash(zip, name):
    bytes = zip.read(name)
    return blake3(bytes).hexdigest()

'''
    Get the blake3 hash of a file.
'''
def get_wasm_blake3_hash_file(name):
    bytes = open(name, "rb").read()
    return blake3(bytes).hexdigest()


'''
    Provides some data about the variants population.
    Returns: the distribution of stacked mutations, the number of first level mutations (only one mutation applied to the original program), the largest stacked mutations, size distribution of the variants.
'''
def check_preservation(f, level="0"):
    # download the db

    if not os.path.exists(f"{f}.variants.zip"):
        s = subprocess.check_output(["mc", "cp", f"exp/wasm-mutate/variants/{f}.c/variants.zip", f"{f}.variants.zip"])

    if not os.path.exists(f"{f}.c.db"):
        s = subprocess.check_output(["mc", "cp", f"exp/wasm-mutate/rq1/metas_raw_db/{f}.c.db", f"{f}.c.db"])
    
    with zzip.ZipFile(f"{f}.variants.zip", "r") as zip_ref:
        # get all Wasm instances
        wasm = Wasm.select()
        ORM_OPS = []
        I = 0
        for w in wasm:
            # Get the file in the zip
            file = zip_ref.open(w.name)
            # Save the file in tmp folder
            basename = os.path.basename(w.name)
            with open(f"/tmp/{basename}", "wb") as tmp:
                shutil.copyfileobj(file, tmp)
                # Run the file with wasmtime
                try:
                    cmd = [WASMTIME, "compile", "--opt-level",  level,  f"/tmp/{basename}", "-o", f"{w.name}.{level}.opt"]

                    # print(" ".join(cmd))
                    if not os.path.exists(f"{w.name}.{level}.opt"):
                        result = subprocess.check_output(cmd, stderr=subprocess.STDOUT)
                    else:
                        result = b""
                    # Save the result in the db
                    cwasm = Cwasm(wasm=w, level=level, hash=get_wasm_blake3_hash_file(f"{w.name}.{level}.opt"), stdout=result.decode("utf-8"))
                    ORM_OPS.append(cwasm)
                except Exception as e:
                    print(e)
                    cwasm = Cwasm(wasm=w, level=level, hash="", stderr=f"{e}")
                    ORM_OPS.append(cwasm)
                I += 1

                if I % 1000 == 999:
                    print("Saving", I)
        
            #exit(0)
        with db.atomic():
            size = 500
            # remove one to avoid issue if peewee adds some variable
            for i in range(0, len(ORM_OPS), size):
                # table.insert_many(data[i:i+size]).upsert().execute()
                Cwasm.bulk_create(ORM_OPS[i:i+size])

if __name__ == "__main__":
    os.makedirs("out", exist_ok=True)
    # plot_data("result.json")
    check_preservation(NAME, "0")
    check_preservation(NAME, "1")
    check_preservation(NAME, "2")
    check_preservation(NAME, "s")