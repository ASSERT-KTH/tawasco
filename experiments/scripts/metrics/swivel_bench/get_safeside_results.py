import sys
import json
import matplotlib.pyplot as plt

import re
from latexify import *
import numpy as np

VARIANT_NAME = r"stack\.(\d+)\.wasm\.(\d+).wasm"

TIME = r"real[ \t]+(\d+)m(\d+)\.(\d+)s"
TIME2 = r"\d+.\d+user \d+.\d+system (\d+):(\d+).(\d+)elapsed"

def get_correct_bytes_ordered(secret, exfiltrated):
    i = 0
    for x in secret:
        if x == exfiltrated[i]:
            i += 1

    return i


def get_correct_bytes(secret, exfiltrated):
    i = 0
    for x in exfiltrated:
        if x in secret:
            i += 1

    return i

def process_bin_chunk(chunk, secret=list("It's a s3kr3t!!!")):
    #print(chunk)

    # get variant name
    matches = re.search(VARIANT_NAME, chunk)
    if matches:
        variant_name = matches.group(0)
        variant_seed = matches.group(1)
        stacked = matches.group(2)
        is_original = False
    else:
        # check if "original" in chunk
        if "original" in chunk:
            variant_name = "original"
            variant_seed = None
            stacked = None
            is_original = True
        else:
            print(chunk)
            raise Exception("Could not identify variant")
    if "SUCCESS" not in chunk:
        # discard it, it was not a correct execution
        raise Exception("Not a success")
    # extrac the time
    matches = re.search(TIME, chunk)
    if matches:
        mins = matches.group(1)
        secs = matches.group(2)
        secs2 = matches.group(3)
        time = int(mins) * 60 + ( 1000 * int(secs) +int(secs2))/1000
    else:
        time = -1


    print(variant_seed, stacked, is_original, variant_name, time)

    # Now we parse the Leaking string part
    i = chunk.find("Leaking the string: ")
    i = i + len("Leaking the string: ")
    
    if i:
        exfiltrated = []
        for j, c in enumerate(chunk[i:]):
            if chunk[i+j:i+j + 6] == "\nDone!":
                break
            exfiltrated.append(c)
        
        print(get_correct_bytes(secret, exfiltrated), time)
        return dict(
            correct_bytes = get_correct_bytes(secret, exfiltrated),
            time = time,
             variant_name= variant_name, 
             variant_seed=variant_seed,
              stacked= stacked,
               original= is_original
        )



    exit(1)
def process_file(f):
    content = open(f, "rb").read()
    content = content.decode("utf-8",errors="replace")

    # split by ocurrences of "DONE"
    chunks = content.split("DONE")

    # process each chunk
    print(len(chunks))
    overall_info = {}
    original = None
    for ch in chunks:
        try:
            info = process_bin_chunk(ch)

            time = info['time']
            if time > 0:
                variant_seed = info['variant_seed']
                if variant_seed not in overall_info:
                    overall_info[variant_seed] = []
                overall_info[variant_seed].append(info)
            if info['original']:
                original = info
        except Exception as e:
            print(e)
            #if not original:
            #    original = info

    if original is None:
        raise Exception("Could not find original")
    return overall_info, original


def plot_info(info, orig):
    # Each seed is different

    seeds = info
    row = 10
    fig, axes = plt.subplots(nrows=row, ncols=int(len(seeds)/row), figsize=(20, 20))

    origc = orig['correct_bytes']
    origtime = orig['time']
    overall_success_rate = [(0, origc/origtime)]
    timesall = [origtime]

    axes = [ax for axrow in axes for ax in axrow]
    #axes = range(4*5)
    for (s, infos), ax in zip(list(seeds.items()), axes):
        format_axes(ax, show = ['left', 'bottom'], hide=['top', 'right'])
        print(s, len(infos))
        success_rate = []
        success_stacked = []
        times = []

        for info in infos:
            if info["stacked"]:
                stacked = int(info["stacked"])
                #if stacked == 0:
                #    print(f"Stacked is 0 {info}, skipping")
                #    continue
                time = info['time']
                times.append(time)
                timesall.append(time)
                success_stacked.append(stacked)
                success_rate.append(info['correct_bytes']/time)
            

        overall_success_rate += list(zip(success_stacked, success_rate))

        success_stacked.append(0)
        success_rate.append(origc/origtime)
        #success_rate.append(zero['time'])
        


        points = zip(success_stacked, success_rate)
        points = sorted(points, key=lambda x: x[0])
        points = list(points)

        timepoints = zip(success_stacked, times)
        timepoints = sorted(timepoints, key=lambda x: x[0])
        
        print(points)
        ax.plot(
            [x[0] for x in points if x[0] < 1000],
            [x[1] for x in points  if x[0] < 1000],
            '--.',
            # color='C0',
            alpha=0.3
        )
        ax.set_ylim(0)

    plt.tight_layout()
    
    plt.savefig("safe_side.success.pdf")
    
    plt.clf()
    latexify(fig_width=5, fig_height=5, font_size=14, tick_size=14)

    # plot somekind of ROC curve
    STEP=20
    xs = range(0, 1001, STEP)
    print(overall_success_rate)
    # Save overall_success_rate
    assert len(overall_success_rate) == len(timesall)
    json.dump([overall_success_rate, timesall], open(f"overall_success_rate.pht.json", "w"), indent=4)

    # Filter first
    # overall_success_rate = [x for x in overall_success_rate if x[1] < 1000]

    fig, ax = plt.subplots()
    format_axes(ax, show = ['left', 'bottom'], hide=['top', 'right'])
    # scatter
    ax.scatter(
        [x[0] for x in overall_success_rate],
        [x[1] for x in overall_success_rate],
        alpha=0.5
    )
    fig.savefig("scatter.pdf")
    def filter(ss):
        # Filter outliers
        p = np.percentile(ss, 90)
        print(ss, p)
        ss = [x for x in ss if x <= p]
        return np.mean(ss)
    
    ys = [ ([x[1] for x in overall_success_rate if x[0] >= limit ], limit) for limit in xs ]
    print("chunks", ys)

    ys = [ (filter(x), limit) for x, limit in ys  if len(x) > 0]
    print(ys)
    xs = [x[1] for x in ys]
    ys = [x[0] for x in ys]
    print(ys)

    print(ys)
    fig, ax = plt.subplots()
    format_axes(ax, show = ['left', 'bottom'], hide=['top', 'right'])

    ax.plot(xs, ys, '--o', alpha=0.2)

        
    ax.set_ylabel("AVG bandwidth (b/s)")
    ax.set_xlabel("Stacked mutations")
    ax.set_ylim(0)

    plt.tight_layout()
    plt.savefig("ROC.safeside.pdf")

if __name__ == "__main__":
    info, orig = process_file(sys.argv[1])
    plot_info(info, orig)
    # Save the json
    json.dump(info, open(f"{sys.argv[1]}.json", "w"), indent=4)