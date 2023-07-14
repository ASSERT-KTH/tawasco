import sys
import json
import matplotlib.pyplot as plt

import re
from latexify import *
import numpy as np
import os

VARIANT_NAME = r"stack\.(\d+)\.wasm\.(\d+).wasm"

TIME = r"real[ \t]+(\d+)m(\d+)\.(\d+)s"
TIME2 = r"\d+.\d+user \d+.\d+system (\d+):(\d+).(\d+)elapsed"

def get_correct_bytes(secret, exfiltrated):
    i = 0
    for x in exfiltrated:
        if x in secret:
            i += 1

    return i

def parse_file(f, secret=list("I")):
    content = open(f, "rb").read().decode("utf-8", errors="replace")
    # get variant name
    matches = re.search(VARIANT_NAME, content)
    if matches:
        variant_name = matches.group(0)
        variant_seed = matches.group(1)
        stacked = matches.group(2)
        is_original = False
    else:
        # check if "original" in chunk
        if "original" in content:
            variant_name = "original"
            variant_seed = None
            stacked = None
            is_original = True
        else:
            print(content)
            raise Exception("Could not identify variant")
    start_count = content.count("START")
    print(f, variant_name, variant_seed, stacked, is_original, start_count)
    if "FAILURE" in content:
        # discard it, it was not a correct execution
        raise Exception("Not a success")

    try:
        i = content.index("Leaking the string: ")
        if i > 0:
            i += len("Leaking the string: ")
            exfiltrated = []
            for j, c in enumerate(content[i:]):
                if content[i+j:i+j + 6] == "\nDone!":
                    break
                exfiltrated.append(c)
                correct_bytes = get_correct_bytes(secret, exfiltrated)


            # here we return the correct bytes and the execution time. If no execution time could be gathered, the "non success" (START count) running takes 
            # 29 seconds in average, we take that
            matches = re.search(TIME2, content)
            if matches:
                mins = matches.group(1)
                secs = matches.group(2)
                secs2 = matches.group(3)
                time = int(mins) * 60 + ( 1000 * int(secs) +int(secs2))/1000
            else:
                time = 0
            
            timea = time + 29 * start_count
            return dict(
                variant_name=variant_name,
                variant_seed=variant_seed,
                stacked=stacked,
                is_original=is_original,
                correct_bytes=correct_bytes,
                time=timea,
                realtime=time,
                start_count=start_count,
                exfiltrated="".join(exfiltrated),
            )
            

    except ValueError:
        print("No exfiltration")
        return

def process_folder(folder):
    print(folder)

    overall_info = []
    for d, _, files in os.walk(folder):
        for f in files:
            if f.endswith(".txt") and ".tmp" not in f:
                try:
                    info = parse_file(os.path.join(d, f))

                    if info:
                        overall_info.append(info)

                except Exception as e:
                    print(e)
    # Save overall info
    json.dump(overall_info, open(f"{folder}.json", "w"), indent=4)

    return overall_info

def plot_info(info):
    overall_success_rate = []
    start_count = []
    all_times = []
    
    # get the original
    original = [x for x in info if x["is_original"]]
#    assert len(original) == 1
    original = original[0]

    original_time = original['time']
    overall_success_rate.append((0, original['correct_bytes']/original_time))
    all_times.append(original['time'])
    start_count.append((0, original['start_count']))

    print(original, info)
    seeds = {}
    for v in info:
        if v['variant_seed'] not in seeds:
            seeds[v['variant_seed']] = []
        seeds[v['variant_seed']].append(v)

    print("Plotting each")
    row = 10
    fig, axes = plt.subplots(nrows=row, ncols=int(len(seeds)/row), figsize=(20, 20))
    axes = [ax for axrow in axes for ax in axrow]

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
                success_stacked.append(stacked)
                success_rate.append(info['correct_bytes']/time)
            

        

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
    plt.savefig("pht.seed.pdf")
    # Now got o the others
    for v in infos:
        try:
            if not v['is_original']:
                # we take the stacked
                print(v)
                overall_success_rate.append((int(v['stacked']), v['correct_bytes']/v['time']))
                all_times.append(v['time'])
                start_count.append((int(v['stacked']), v['start_count']))
        except Exception as e:
            print(e, v)
    # scatter overall success rate
    latexify(fig_width=10, fig_height=10, font_size=11, tick_size=11)
    fig, ax = plt.subplots()
    format_axes(ax, show = ['left', 'bottom'], hide=['top', 'right'])
    ax.scatter([x[0] for x in overall_success_rate], [x[1] for x in overall_success_rate])

    plt.savefig("overall_success_rate.ret2spec.pdf")

    # scatter the start count vs stacked
    latexify(fig_width=10, fig_height=10, font_size=11, tick_size=11)
    fig, ax = plt.subplots()
    format_axes(ax, show = ['left', 'bottom'], hide=['top', 'right'])
    ax.scatter([x[0] for x in start_count], [x[1] for x in start_count])
    plt.savefig("start_count.ret2spec.pdf")

    latexify(fig_width=10, fig_height=10, font_size=11, tick_size=11)
    fig, ax = plt.subplots()
    format_axes(ax, show = ['left', 'bottom'], hide=['top', 'right'])
    # Now we do the cumul plot :|
    def filter(ss):
        # Filter outliers
        p = np.percentile(ss, 90)
        print(ss, p)
        ss = [x for x in ss if x <= p]
        return np.mean(ss)
    
    STEP=100
    xs = range(0, 1001, STEP)
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
    plt.savefig("ROC.ret2spec.pdf")

    plt.clf()

    # Lets plot # stacked VS trials
    fig, ax = plt.subplots()
    # Get linear correlation
    import scipy.stats
    print(scipy.stats.pearsonr([x[0] for x in start_count], [x[1] for x in start_count]))
    # interpret the results
    alpha = 0.05
    if scipy.stats.pearsonr([x[0] for x in start_count], [x[1] for x in start_count])[1] > alpha:
        print('Samples are uncorrelated (fail to reject H0) p-value: ', scipy.stats.pearsonr([x[0] for x in start_count], [x[1] for x in start_count])[1])
    else:
        print('Samples are correlated (reject H0) p-value: ', scipy.stats.pearsonr([x[0] for x in start_count], [x[1] for x in start_count])[1])
    ax.scatter(
        [x[0] for x in start_count],
        [x[1] for x in start_count],
        alpha=0.2
    )
    plt.savefig("Stacked.pdf")


    


if __name__ == "__main__":
    overall_info = process_folder(sys.argv[1])
    plot_info(overall_info)
    # Save the json
    #json.dump(info, open(f"{sys.argv[1]}.json", "w"), indent=4)