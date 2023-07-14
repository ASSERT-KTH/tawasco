import sys
import os
import re
import json

VARIANT_NAME = r"stack\.(\d+)\.wasm\.(\d+).wasm"

TIME = r"(\d+)m(\d+)\.(\d+)s"
TIME2 = r"\d+.\d+user \d+.\d+system (\d+):(\d+).(\d+)elapsed"

def get_time(line):
    matches = re.search(TIME2, line)
    if matches:
        mins = matches.group(1)
        secs = matches.group(2)
        secs2 = matches.group(3)
        r = int(mins) * 60 + ( 1000 * int(secs) +int(secs2))/1000

        print(line, r)
        return r
    else:
        raise Exception("Could not find time in line: " + line)

NORMAL = 0

def process_stdout(lines, variant_seed, stacked, time):
    # print("stdout", lines)
    global NORMAL
    exited_normally = "exited normally" in lines[-1]
    # read the first four bytes of the stdout
    tail = lines[0].encode()
    FREQ = {}

    for b in tail:
        if not b in FREQ:
            FREQ[b] = 0
        FREQ[b] += 1


    if exited_normally:
        NORMAL += 1
        print(variant_seed, stacked, FREQ, time)
        print(NORMAL)
        return dict(variant_seed=variant_seed, stacked=stacked, freq=FREQ, time=time, msg=lines[-1])
    
    return dict(variant_seed=variant_seed, stacked=stacked, freq=FREQ, time=time, error="exited abnormally", msg=lines[-1])

def process_variant_info(f, lines, ST="$22", ND="$23"):
    # the last three lines contain the execution time info
    real_time = get_time(lines[-4])
     #sys_time = get_time(lines[-1])
    
    #print(real_time, user_time, sys_time)
    START = 0
    END = 0
    i = 0
        # The next line is the variant
    
    variant_name = lines[i+6]
    print(variant_name)

    is_original = False
    is_variant = False

    variant_seed = None
    stacked = "0"
    # print(variant_name)
    if "Taking" in variant_name:
        if "original" in variant_name:
            is_original = True
        elif "random" in variant_name:
            is_variant = True
            # extract variant info
            matches = re.search(VARIANT_NAME, variant_name)
            if matches:
                variant_seed = matches.group(1)
                stacked = matches.group(2)
                #print(variant_seed)
                #print(stacked)
    for i, l in enumerate(lines):
        if ST in l:
            START = i
        if ND in l:
            END = i
            print(f, START, END)
            r = process_stdout(lines[START + 1:END], variant_seed, stacked, real_time)

            r['name'] = variant_name
            if is_original:
                print("ORIGINAL", r)
                #exit(1)
            return r
            
def process_file(f, ST="$22", ND="$23"):
    # get size of f
    size = os.path.getsize(f)
    content = open(f, "rb").read()

    return process_variant_info(f, content.decode(errors="ignore").split("\n"), ST, ND)

def process_folder(f, ST="$22", ND="$23"):
    print("Reading log folder")

    variant_info = []
    for d, _, files in os.walk(f):

        for file in files:
            if file.endswith(".txt"):
                try:
                    variant_info.append(process_file(os.path.join(d, file), ST, ND))
                except Exception as e:
                    print("Error processing file: ", file, e)
                    continue

    # Save it to a JSON file
    print("Saving to JSON")
    with open(f + ".json", "w") as jsonfile:
            jsonfile.write(json.dumps(variant_info, indent=4))
    
    return variant_info
                
if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python calculate_avg.py <folder>")
        sys.exit(1)

    f = sys.argv[1]
    process_folder(f)