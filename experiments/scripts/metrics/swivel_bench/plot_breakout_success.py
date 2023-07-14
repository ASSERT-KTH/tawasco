import matplotlib.pyplot as plt
import sys
import json
from latexify import *
import numpy as np

def process(f,title=None, k='83'):

    latexify(fig_width=10, fig_height=10, font_size=11, tick_size=11)
    data = json.load(open(f))
    
    seeds = {

    }

    zero = None
    for info in data:
        seed = info["variant_seed"]
        if seed:
            if seed not in seeds:
                seeds[seed] = []
            seeds[seed].append(info)
        else:
            if "error" not in info:
                zero = info

    print("Zero: ", zero)
    if k in zero['freq']:
        bandwidthzero = zero['freq'][k]
        timezerp = zero['time']
        overall_success_rate = [(0, bandwidthzero/timezerp)]
        all_times = [timezerp]
    else:
        overall_success_rate = []
        bandwidthzero = None
        all_times = []

    row = 10
    fig, axes = plt.subplots(nrows=row, ncols=int(len(seeds)/row), figsize=(20, 20))
    # flat the axes
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
                if "error" not in info:

                    time = info['time']
                    times.append(time)
                    success_stacked.append(stacked)
                    all_times.append(time)
                    if k in info['freq']: # then it is the secret:
                        success_rate.append(info['freq'][k]/time)
                    else:
                        success_rate.append(0)

            

        overall_success_rate += list(zip(success_stacked, success_rate))

        success_stacked.append(0)
        if bandwidthzero:
            success_rate.append(bandwidthzero)
            success_rate.append(zero['time'])
        


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
        ax.set_title(s)
        ax.set_ylim(0)
        #plt.plot(
        #    [x[0] for x in timepoints if x[0] < 1000],
        #    [x[1] for x in timepoints  if x[0] < 1000],
       #     '--.',
            # color='C0',
        #    alpha=0.3
        #)
        #break
    #plt.show()
    plt.tight_layout()
    plt.savefig(f"success.{title}.pdf")
    
    plt.clf()
    latexify(fig_width=5, fig_height=5, font_size=14, tick_size=14)

    # plot somekind of ROC curve
    STEP = 5
    xs = range(0, 200, STEP)
    print(overall_success_rate)

    # Filter first
    # overall_success_rate = [x for x in overall_success_rate if x[1] < 1000]

    #ys = [ sum([x[0] for x in overall_success_rate if x[1] >= limit])/(len([0 for x in overall_success_rate if x[1] >= limit]) + 1) for limit in xs ]
    # Remove outliers
    # Save the overall success rate into a file

    assert len(overall_success_rate) == len(all_times)
    with open(f"overall_success_rate.{title}.json", "w") as f:
        json.dump([overall_success_rate, all_times], f)

    ys = [ ([x[1] for x in overall_success_rate if x[0] >= limit ], limit) for limit in xs ]
    print("chunks", ys)

    def filter(ss):
        # Filter outliers
        p = np.percentile(ss, 90)
        print(ss, p)
        ss = [x for x in ss if x <= p]
        return np.mean(ss)

    ys = [ ( filter(x), limit) for x, limit in ys  if len(x) > 0]
    print(ys)
    xs = [x[1] for x in ys]
    ys = [x[0] for x in ys]
    print(ys)
    fig, ax = plt.subplots()
    format_axes(ax, show = ['left', 'bottom'], hide=['top', 'right'])

    ax.plot(xs, ys, '--o', alpha=0.5)
    if title:
        ax.set_title(title)
        
    ax.set_ylabel("AVG bandwidth (b/s)")
    ax.set_xlabel("Stacked mutations")
    ax.set_ylim(0)

    plt.tight_layout()
    plt.savefig(f"ROC.{title}.pdf")
if __name__ == "__main__":
    process(sys.argv[1], title=sys.argv[2], k="83")