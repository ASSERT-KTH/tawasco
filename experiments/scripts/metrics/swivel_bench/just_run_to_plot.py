import sys
import os
import json

import calculate_avg
import get_safeside_results
import get_safeside_results_ret2spec
import matplotlib.pyplot as plt
from latexify import *
import numpy as np
from scipy import stats


def do_plot_btb(ax, data, Sk="83", STEP=20, TO=200, title=None, mode="cumul", filter = lambda x: np.mean(x), label="", kde=False, **plotargs):

    format_axes(ax, show = ['left', 'bottom'], hide=['top', 'right'])
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
            if info["stacked"] == "0" and not 'error' in info:
                if "Taking original" in info['name']:
                    zero = info

    print("Zero: ", zero)
    if Sk in zero['freq']:
        bandwidthzero = zero['freq'][Sk]
        timezerp = zero['time']
        overall_success_rate = []#(0, bandwidthzero/timezerp)]
        all_times = [timezerp]
    else:
        raise Exception("The original does not exfiltrate")

    for s, infos in list(seeds.items()):
        #print(s, len(infos))
        success_rate = []
        success_stacked = []
        times = []

        for info in infos:
            if info["stacked"]:
                stacked = int(info["stacked"])
                if stacked == 0:
                    print(f"Stacked is 0 {info}, skipping")
                    
                    success_rate.append(info['freq'][Sk]/time)
                    success_rate.append(0)
                if "error" not in info:

                    time = info['time']
                    times.append(time)
                    success_stacked.append(stacked)
                    all_times.append(time)
                    if Sk in info['freq']: # then it is the secret:
                        #print(info['freq'][Sk])
                        success_rate.append(info['freq'][Sk]/time)
                    else:
                        #print(info, Sk)
                        success_rate.append(0)

            

        overall_success_rate += list(zip(success_stacked, success_rate))

        

        
    # plot somekind of ROC curve
    xs = range(0, TO, STEP)
    #print("S", overall_success_rate)

    # assert len(overall_success_rate) == len(all_times)

    if mode == 'cumul':
        ys = [ ([x[1] for x in overall_success_rate if x[0] >= limit ], limit) for limit in xs ]
        print("chunks", ys)

        

        ys = [ ( filter(x), limit) for x, limit in ys  if len(x) > 0]
        print(ys)
        xs = [x[1] for x in ys]
        ys = [x[0] for x in ys]
        print(ys)

        ax.plot(xs, ys, '--o', alpha=0.5)

            
        ax.set_ylabel("Median bandwidth (b/s)")
        ax.set_xlabel("Stacked transformations")
        ax.set_ylim(0)

    if mode == 'scatter':
        ax.scatter([x[0] for x in overall_success_rate], [x[1] for x in overall_success_rate], alpha=0.1)
        ax.set_ylabel("AVG bandwidth (b/s)")
        ax.set_xlabel("Stacked transformations")
        ax.set_ylim(0)

    # given a population of 100 binaries with t mutations, X\% leak all all correct bytes and Y\% leak 50\% or less correct bytes
    if mode == 'population':
        # overall_success_rate = [x for x in overall_success_rate if x[1] < 1000]
        xs = range(0, 1000 + 4*STEP, STEP)
        ys = [ ([x[1] for x in overall_success_rate if x[0] >= limit and x[0] < limit + STEP], limit + STEP//2) for limit in xs ]

        #ys = [ (filter(x), limit) for x, limit in ys  if len(x) > 0]
        #print(ys)
        #parts = ax.violinplot(
        #    data,
        #    inds,
        #    showmeans=True,
        #    **plotargs
        #)
        inds = []
        medians = []
        quartiles1 = []
        quartiles3 = []
        mins = []
        maxs = []
        ticks = []
        for k, (p, i) in enumerate(ys):
            #print(i)
            if len(p) > 0:
                quartile1 = np.percentile(p, 25)
                median= np.percentile(p, 50)
                quartile3 = np.percentile(p, 75)

                inds.append(i)
                #print(quartile1, median, quartile3)
                medians.append(median)
                quartiles1.append(quartile1)
                quartiles3.append(quartile3)
                mins.append(min(p))
                maxs.append(max(p))


        ticks = [ f"{i - STEP//2}-{j-STEP//2}" for i, j in zip(inds, inds[1:]) ]

        # Patch for the plot glitch        
        if f"{TO-STEP}-{TO}" not in ticks:
            ticks.append(f"{TO-STEP}-{TO}")

        #overall_success_rate = [(0, bandwidthzero/timezerp)]
        #print(ticks)
        C = [ x[1] for x in overall_success_rate if x[1] < bandwidthzero/timezerp]
        C0 = [ x[1] for x in overall_success_rate if x[1] == 0]

        ax.set_xticklabels(ticks, rotation=45)
        ax.set_xticks([x for x in inds])
        ax.scatter([0], [bandwidthzero/timezerp], color='C0', s=25, zorder=3, alpha=0.8, marker='s')
        ax.hlines(bandwidthzero/timezerp, 0, 1000, color='C0', linestyle=(0, (5, 8)), lw=2)
        # Below the line we add a text with the percentage of binaries that leak less than the baseline
        # ax.text(300, 1.1*bandwidthzero/timezerp, f"better population {100*len(C)/len(overall_success_rate):.2f}\\%", ha='left', va='bottom', fontsize=10)
        ax.scatter(inds, medians, marker='o', color='C1', s=20, zorder=3, alpha=0.8)
        # TODO replace by the violin plot
        ax.vlines(inds, quartiles1, quartiles3, color='C1', linestyle='-', lw=1.3)
        print(title)
        print("Better", len(C), len(overall_success_rate), 100*len(C)/len(overall_success_rate), 100000*len(C)/len(overall_success_rate))
        print("Zero", len(C0), len(overall_success_rate), 100*len(C0)/len(overall_success_rate))

        ax.set_ylabel("Bandwidth (b/s)")
        ax.set_xlabel("Stacked transformations")
        ax.set_ylim(0)
    if mode == 'cumul_scatter':
        #print("f2", f2)

        # Running stat test
        # H0: wm does not affect the bandwidth
        # H1: wm affects the bandwidth
        # We reject H0 if p < 0.05 
        # get the samples with no mutations
        overall_success_rate = sorted(overall_success_rate, key=lambda x: x[0])
        
        # filter some seeds that are not good
        # overall_success_rate = [x for x in overall_success_rate if x[1] < 4000]

        no_mutations = [x for x in overall_success_rate if x[0] == 0]
        at_least_one_mutation = [x for x in overall_success_rate if x[0] > 0]
        # print("no mutations", no_mutations)
        print("all", overall_success_rate)
        # exit(1)

        ys = [ ([x[1] for x in overall_success_rate if x[0] >= limit and x[0] < limit + STEP], limit) for limit in xs ]
        #print("chunks", ys)


        # plot kde curve
        if kde:
            gaussian_kde_zi = stats.gaussian_kde([ x[1] for x in overall_success_rate ])
            gaussian_kde_zi.covariance_factor = lambda : 0.8
            gaussian_kde_zi._compute_covariance()
            xss = [x[0] for x in overall_success_rate]
            x=np.linspace(min(xss), max(xss), 1000)
            ax.plot(x, gaussian_kde_zi(x),  linewidth=1, label='kde')


        ys = [ ( filter(x), limit) for x, limit in ys  if len(x) > 0]
        ys = [(np.mean(no_mutations), 0)] + ys
        #print(ys)
        # f1 = [ x for x in ys if x[0] == 0 ]
        xs = [x[1] for x in ys]
        ys = [x[0] for x in ys]
        #print(ys)

        # We do a violin plot for each stack
        #violins = [[] for _ in range(1000)]
        #for stacked, rate in overall_success_rate:
        #    violins[stacked].append(rate)
        
        # filter out violinplots without samples
        #violins = enumerate(violins)
        # apply filter percentile
        #violins = [x for x in violins if len(x[1]) > 0]

        #ax.plot(
        #    [x[0] for x in violins],
        #    [np.min(x[1]) for x in violins],
        #    '--',
        #    alpha=0.5
        #)

        #ax.violinplot([
        #    x[1] for x in violins
        #], positions=[
        #    x[0] for x in violins
        #], vert=True)

        #ax.set_yscale('log')
        ax.plot(xs, ys, '--o', label=label, **plotargs)
        #ax.plot(
        #    [x[1] for x in f1],
        #    [x[0] for x in f1],
        #    'o',
        #    color='C1',
        #    alpha=0.7
        #)
        #ax.plot(
        #    [x[1] for x in f2],
        #    [x[0] for x in f2],
        #    'o',
        #    color='C2'
        #)
        

            
        ax.set_ylabel("Median bandwidth (b/s)")
        ax.set_xlabel("Stacked transformations")
        ax.legend(loc='upper right', bbox_to_anchor=(1.2, 0.8, 0., 0.))
        ax.set_ylim(0)
    if title:
        ax.set_title(title)


def do_plot_ret2spec(ax, info, title=None, STEP=5, mode="cumul", label="", filter= lambda x: np.median(x), **plotargs):
    format_axes(ax, show = ['left', 'bottom'], hide=['top', 'right'])
    
    overall_success_rate = []
    start_count = []
    all_times = []
    
    # get the original
    original = [x for x in info if x["is_original"]]
    assert len(original) == 1
    original = original[0]

    original_time = original['time']
    overall_success_rate.append((0, original['correct_bytes']/original_time))
    all_times.append(original['time'])
    start_count.append((0, original['start_count']))

    print(original)

    # Now got o the others
    for v in info:
        if not v['is_original']:
            # we take the stacked
            overall_success_rate.append((int(v['stacked']), v['correct_bytes']/v['time']))
            all_times.append(v['time'])
            start_count.append((int(v['stacked']), v['start_count']))
    
    if mode == 'scatter':
        # scatter overall success rate
        ax.scatter([x[0] for x in overall_success_rate], [x[1] for x in overall_success_rate], alpha=0.1)
        ax.set_ylabel("AVG bandwidth (b/s)")
        ax.set_xlabel("Stacked transformations")
        ax.set_ylim(0)

    if mode == 'population':
        #overall_success_rate = [x for x in overall_success_rate if x[1] < 1000]
        xs = range(0, 1000 + 2*STEP, STEP)
        ys = [ ([x[1] for x in overall_success_rate if x[0] >= limit and x[0] < limit + STEP], limit + STEP//2) for limit in xs ]

        #ys = [ (filter(x), limit) for x, limit in ys  if len(x) > 0]
        #print(ys)
        #parts = ax.violinplot(
        #    data,
        #    inds,
        #    showmeans=True,
        #    **plotargs
        #)
        inds = []
        medians = []
        quartiles1 = []
        quartiles3 = []
        mins = []
        maxs = []
        for p, i in ys:
            if len(p) > 0:
                quartile1 = np.percentile(p, 25)
                median= np.percentile(p, 50)
                quartile3 = np.percentile(p, 75)

                inds.append(i)
                #print(quartile1, median, quartile3)
                medians.append(median)
                quartiles1.append(quartile1)
                quartiles3.append(quartile3)
                mins.append(min(p))
                maxs.append(max(p))
        #overall_success_rate = [(0, bandwidthzero/timezerp)]

        ticks = [ f"{i - STEP//2}-{j-STEP//2}" for i, j in zip(inds, inds[1:]) ]

        # Patch for the plot glitch        
        if f"{1000-STEP}-{1000}" not in ticks:
            ticks.append(f"{1000-STEP}-{1000}")

        C = [ x[1] for x in overall_success_rate if x[1] < original['correct_bytes']/original_time]
        C0 = [ x[1] for x in overall_success_rate if x[1] == 0]

        ax.set_xticklabels(ticks, rotation=45)
        ax.set_xticks([x for x in inds])

        ax.scatter([0], [original['correct_bytes']/original_time], color='C0', s=25, zorder=3, alpha=0.8, marker='s')

        # ax.text(300, 1.1*original['correct_bytes']/original_time, f"better population{100*len(C)/len(overall_success_rate):.2f}\\%", ha='left', va='bottom', fontsize=10)
        ax.hlines(original['correct_bytes']/original_time, 0, 1000, color='C0', linestyle=(0, (5, 8)), lw=2)
        ax.scatter(inds, medians, marker='o', color='C1', s=20, zorder=3, alpha=0.8)
        # TODO replace by the violin plot
        ax.vlines(inds, quartiles1, quartiles3, color='C1', linestyle='-', lw=1.3)
        print(title)
        print("Better", len(C), len(overall_success_rate), 100*len(C)/len(overall_success_rate))
        print("Zero", len(C0), len(overall_success_rate), 100*len(C0)/len(overall_success_rate))

        ax.set_ylabel("Bandwidth (b/s)")
        ax.set_xlabel("Stacked transformations")
        ax.set_ylim(0)
    if mode == 'cumul_scatter':
        xs = range(0, 1001, STEP)
        ys = [ ([x[1] for x in overall_success_rate if x[0] >= limit and x[0] < limit + STEP], limit) for limit in xs ]

        f1 = [ x for x in overall_success_rate if x[1] == 0]
        f2 = [ x for x in overall_success_rate if x[1] == 0 and x[0] == 0]
        print("chunks", ys)

        ys = [ (filter(x), limit) for x, limit in ys  if len(x) > 0]
        print(ys)
        xs = [x[1] for x in ys]
        ys = [x[0] for x in ys]
        print(ys)

        print(ys)

        format_axes(ax, show = ['left', 'bottom'], hide=['top', 'right'])

        ax.plot(xs, ys, '--o',  label=label, **plotargs)
        ax.legend(loc='upper right', bbox_to_anchor=(1.2, 0.95, 0., 0.))
        #ax.plot(
        #    [x[1] for x in f1],
        #    [x[0] for x in f1],
        #    'o',
        #    color='C1',
        #    alpha=0.8
        #)
        #ax.plot(
        #    [x[1] for x in f2],
        #    [x[0] for x in f2],
        #    'o',
        #    color='C2'
        #)

            
        ax.set_ylabel("Median bandwidth (b/s)")
        ax.set_xlabel("Stacked transformations")
        ax.set_ylim(0, 0.8 )
    if mode == 'cumul':
        # Now we do the cumul plot :|
       
        
        xs = range(0, 1001, STEP)
        ys = [ ([x[1] for x in overall_success_rate if x[0] >= limit ], limit) for limit in xs ]
        print("chunks", ys)

        ys = [ (filter(x), limit) for x, limit in ys  if len(x) > 0]
        print(ys)
        xs = [x[1] for x in ys]
        ys = [x[0] for x in ys]
        print(ys)

        print(ys)

        format_axes(ax, show = ['left', 'bottom'], hide=['top', 'right'])

        ax.plot(xs, ys, '--o', alpha=0.3)

            
        ax.set_ylabel("Median bandwidth (b/s)")
        ax.set_xlabel("Stacked transformations")
        ax.set_ylim(0)
        ax.legend()
    if title:
        ax.set_title(title)

def do_plot_pht(ax, info, orig, title="PHT", STEP=5, mode="cumul", label="", filter= lambda x: np.median(x), **plotargs):
    # Each seed is different

    format_axes(ax, show = ['left', 'bottom'], hide=['top', 'right'])
    seeds = info

    origc = orig['correct_bytes']
    origtime = orig['time']
    overall_success_rate = [(0, origc/origtime)]
    timesall = [origtime]

    for s, infos in list(seeds.items()):
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
    if mode == 'population':
        overall_success_rate = [x for x in overall_success_rate if x[1] < 1000]
        xs = range(0, 1000 + 2*STEP, STEP)
        ys = [ ([x[1] for x in overall_success_rate if x[0] >= limit and x[0] < limit + STEP], limit + STEP//2) for limit in xs ]

        #ys = [ (filter(x), limit) for x, limit in ys  if len(x) > 0]
        #print(ys)
        #parts = ax.violinplot(
        #    data,
        #    inds,
        #    showmeans=True,
        #    **plotargs
        #)
        inds = []
        medians = []
        quartiles1 = []
        quartiles3 = []
        mins = []
        maxs = []
        for p, i in ys:
            if len(p) > 0:
                quartile1 = np.percentile(p, 25)
                median= np.percentile(p, 50)
                quartile3 = np.percentile(p, 75)

                inds.append(i)
                #print(quartile1, median, quartile3)
                medians.append(median)
                quartiles1.append(quartile1)
                quartiles3.append(quartile3)
                mins.append(min(p))
                maxs.append(max(p))

        ticks = [ f"{i - STEP//2}-{j-STEP//2}" for i, j in zip(inds, inds[1:]) ]

        # Patch for the plot glitch        
        if f"{1000-STEP}-{1000}" not in ticks:
            ticks.append(f"{1000-STEP}-{1000}")
        C = [ x[1] for x in overall_success_rate if x[1] < origc/origtime]
        C0 = [ x[1] for x in overall_success_rate if x[1] == 0]

        ax.set_xticklabels(ticks, rotation=45)
        ax.set_xticks([x for x in inds])

        #overall_success_rate = [(0, bandwidthzero/timezerp)]
        ax.scatter([0], [origc/origtime], color='C0', s=25, zorder=3, alpha=0.8, marker='s')
        ax.hlines(origc/origtime, 0, 1000, color='C0', linestyle=(0, (5, 8)), lw=2)

        # ax.text(300, 1.1*origc/origtime, f"better population {100*len(C)/len(overall_success_rate):.2f}\\%", ha='left', va='bottom', fontsize=10)
        ax.scatter(inds, medians, marker='o', color='C1', s=20, zorder=3, alpha=0.8)
        # TODO replace by the violin plot
        ax.vlines(inds, quartiles1, quartiles3, color='C1', linestyle='-', lw=1.3)
        
        print(title)
        print("Better", len(C), len(overall_success_rate), 100*len(C)/len(overall_success_rate), 100000*len(C)/len(overall_success_rate))
        print("Zero", len(C0), len(overall_success_rate), 100*len(C0)/len(overall_success_rate))

        ax.set_ylabel("Bandwidth (b/s)")
        ax.set_xlabel("Stacked transformations")
        ax.set_ylim(0)
    if mode == 'scatter':
        ax.scatter([x[0] for x in overall_success_rate], [x[1] for x in overall_success_rate], alpha=0.1)
        ax.set_ylabel("AVG bandwidth (b/s)")
        ax.set_xlabel("Stacked transformations")
        ax.set_ylim(0)
    # plot somekind of ROC curve
    if mode == 'cumul_scatter':
        xs = range(0, 1001, STEP)
        print(overall_success_rate)
        # Save overall_success_rate
        assert len(overall_success_rate) == len(timesall)
        overall_success_rate = [x for x in overall_success_rate if x[1] < 100000]
        json.dump([overall_success_rate, timesall], open(f"overall_success_rate.pht.json", "w"), indent=4)


        # Filter first

        # scatter
    
        
        ys = [ ([x[1] for x in overall_success_rate if x[0] >= limit and x[0] < limit + STEP and x[1] < 4000000], limit) for limit in xs ]
        print("chunks", ys)

        ys = [ (filter(x), limit) for x, limit in ys  if len(x) > 0]
        print(ys)
        xs = [x[1] for x in ys]
        ys = [x[0] for x in ys]
        print(ys)

        print(ys)

        

        ax.plot(xs, ys, '--o', label=label, **plotargs)
        ax.legend(loc='upper right', bbox_to_anchor=(0.7, 1.0, 0., 0.))
        
        #ax.plot(
        #    [x[1] for x in f1],
        #    [x[0] for x in f1],
        #    'o',
        #    color='C1',
        #    alpha=0.8
        #)
        #ax.plot(
        #    [x[1] for x in f2],
        #    [x[0] for x in f2],
        #    'o',
        #    color='C2'
        #)

            
        ax.set_ylabel("Median bandwidth (b/s)")
        ax.set_xlabel("Stacked transformations")
        ax.set_ylim(0, 4)
    if mode == 'cumul':
        xs = range(0, 1001, STEP)
        print(overall_success_rate)
        # Save overall_success_rate
        assert len(overall_success_rate) == len(timesall)
        json.dump([overall_success_rate, timesall], open(f"overall_success_rate.pht.json", "w"), indent=4)

        
        ys = [ ([x[1] for x in overall_success_rate if x[0] >= limit ], limit) for limit in xs ]
        print("chunks", ys)

        ys = [ (filter(x), limit) for x, limit in ys  if len(x) > 0]
        print(ys)
        xs = [x[1] for x in ys]
        ys = [x[0] for x in ys]
        print(ys)

        print(ys)

        ax.plot(xs, ys, '--o', alpha=0.1)

            
        ax.set_ylabel("Median bandwidth (b/s)")
        ax.set_xlabel("Stacked transformations")
        ax.set_ylim(0)
    ax.set_title(title)


if __name__ == "__main__":
    # Get the info data from folders
    btb_breakout = calculate_avg.process_folder("../../../dataset/results_breakout", ST="$41", ND="$42")
    btb_leakage = calculate_avg.process_folder("../../../dataset/results_leakage2", ST="$22", ND="$23")
    pht_safeside, original_saafeside = get_safeside_results.process_file("../../../dataset/pht2.txt")
    ret2spec_safeside = get_safeside_results_ret2spec.process_folder("../../../dataset/ret2spec_sa_results")

    # Plot the results
    latexify(fig_width=13, fig_height=3, font_size=11, tick_size=11, xtick_size=10)
    fig, axs = plt.subplots(ncols=4)
    fig.tight_layout(pad=4.0)
    ax1, ax2, ax3, ax4 = axs


    def filter_90_percentile(ss):
        # Filter outliers
        if len(ss) == 1:
            return np.mean(ss)
        
        p = np.percentile(ss, 90)
        print(ss, p)

        ss = [x for x in ss if x <= p]
        return np.median(ss)

    def filter_median(ss):
        return np.median(ss)
    
    def filter_inter_quartile(ss, p0=10, p1=90):
        # Filter outliers
        p75 = np.percentile(ss, p1)
        p25 = np.percentile(ss, p0)

        ss = [x for x in ss if x <= p75 and x >= p25]
        return np.mean(ss)

    #do_plot_btb(ax1, btb_breakout, title="Spectre BTB Breakout", Sk=83, STEP=1, mode='scatter')
    #do_plot_btb(ax2, btb_leakage, title="Spectre BTB Leakage", Sk=83, STEP=1, mode='scatter')
    #do_plot_pht(ax4, pht_safeside, original_saafeside,  title="Spectre PHT", STEP=1, mode='scatter')


    #do_plot_btb(ax1, btb_breakout, title="Spectre BTB Breakout", Sk=83, STEP=10)
    #do_plot_btb(ax2, btb_leakage, title="Spectre BTB Leakage", Sk=83, STEP=10)
    #do_plot_ret2spec(ax3, ret2spec_safeside, title="Spectre Ret2Spec", STEP=10)
    #do_plot_pht(ax4, pht_safeside, original_saafeside,  title="Spectre PHT", STEP=10)
    
    #do_plot_btb(ax1, btb_breakout, title="Spectre BTB Breakout", Sk=83, STEP=10, TO=600, mode='cumul_scatter', filter=filter_90_percentile)
    #do_plot_btb(ax2, btb_leakage, title="Spectre BTB Leakage", Sk=83, STEP=10, TO=600, mode='cumul_scatter', filter=filter_90_percentile)

    #     do_plot_btb(ax1, btb_breakout, title="Spectre BTB Breakout", Sk=83, STEP=10, TO=600, mode='cumul_scatter', filter=filter_90_percentile, label="÷10 resolution", marker='x')

    #do_plot_btb(ax1, btb_breakout, title="Spectre BTB Breakout", Sk=83, STEP=20, TO=600, mode='cumul_scatter', filter=filter_90_percentile, kde=False, label="/10 variants", marker='o', ms=5, alpha=0.2, linestyle='-')
    #do_plot_btb(ax2, btb_leakage, title="Spectre BTB Leakage", Sk=83, STEP=20, TO=600, mode='cumul_scatter', filter=filter_90_percentile, label="/10 variants", marker = 'o', ms=5, alpha=0.2, linestyle='-')

    #do_plot_btb(ax1, btb_breakout, title="Spectre BTB Breakout", Sk=83, STEP=100, TO=600, mode='cumul_scatter', filter=filter_90_percentile, label="/100 resolution", marker='o', ms=10, alpha=0.8, linestyle='--')
    # do_plot_btb(ax2, btb_leakage, title="Spectre BTB Leakage", Sk=83, STEP=100, TO=600, mode='cumul_scatter', filter=filter_90_percentile, label="/100 resolution", marker='o', ms=10, alpha=0.8, linestyle='--')
    do_plot_btb(ax1, btb_breakout, title="btb\_breakout", Sk=83, STEP=100, TO=1000, mode='population', filter=filter_inter_quartile, label="/100 resolution")
    do_plot_btb(ax2, btb_leakage, title="btb\_leakage", Sk=83, STEP=100, TO=1000, mode='population', filter=filter_inter_quartile, label="/100 resolution")
#    do_plot_btb(ax3, btb_breakout, title="btb\_leakage", Sk=83, STEP=30, TO=1000, mode='population', filter=filter_inter_quartile, label="/100 resolution")

    
    do_plot_ret2spec(ax3, ret2spec_safeside, title="ret2spec", STEP=100, mode='population', label="/10 resolution")
    #do_plot_ret2spec(ax3, ret2spec_safeside, title="Spectre Ret2Spec", STEP=100, mode='cumul_scatter', label="/100 resolution", marker='o', ms=10, alpha=0.8, linestyle='--')
    #do_plot_ret2spec(ax3, ret2spec_safeside, title="ret2spec", STEP=5, mode='population', label="/100 resolution", marker='o')

    #do_plot_pht(ax4, pht_safeside, original_saafeside,  title="Spectre PHT", STEP=10, mode='cumul_scatter', label="/10 resolution", marker='o', ms=5, alpha=0.3, linestyle='--')
    #do_plot_pht(ax4, pht_safeside, original_saafeside,  title="Spectre PHT", STEP=100, mode='cumul_scatter', label="/100 resolution", marker='o', ms=10, alpha=0.8, linestyle='--')
    do_plot_pht(ax4, pht_safeside, original_saafeside,  title="pht", STEP=100, mode='population', label="/100 resolution")


    #plt.legend()
    plt.savefig("results.rq3.pdf")

    #print(pht_safeside, ret2spec_safeside)