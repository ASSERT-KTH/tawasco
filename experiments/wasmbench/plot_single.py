import matplotlib.pyplot as plt
import sys
import numpy as np
import os
from laxetify import *

def parse_line(line):

    chunks = line.split(",")

    if len(chunks) == 5:
        try:
            return {
                "variant": chunks[0],
                "size": int(chunks[1]),
                "mcsize": int(chunks[2]),
                "compt": int(chunks[3]),
                "ext": int(chunks[4])
            }, "original" in chunks[0]
        except:
            return None

    return None

def parse_lines(lines):
    lines = lines[1:]
    parsed = []
    for i, l in enumerate(lines):
        p = parse_line(l)
        if p is not None:
            parsed.append(p)

    return parsed

def plot_distrib(ax, data, label, color, ticks, title=None):
    
    ax.set_xticks(ticks)
    ax.hist(data, bins=100, color=color, label=label)
    ax.set_ylabel("Variants count")

    if title:
        ax.set_title(title)

def get_by_file(f):
    print(f)
    csv = open(f, 'rb').read().decode('utf-8', errors='ignore')
    lines = csv.split('\n') # discard header

    chunks = parse_lines(lines)
    original = [c for c,is_original in chunks if is_original]
    chunks = [[c,is_original] for c,is_original in chunks if not is_original]
   
    original = {
        k: np.mean([c[k] for c in original])
        for k in original[0].keys() if k != "variant"
    }

    return original, chunks

def main(f):
    
    latexify(fig_width=5.5, fig_height=3, font_size=11, tick_size=11, xtick_size=10)
    all_samples = {
        "size": [],
        "mcsize": [],
        "compt": [],
        "ext": []
    }
    C = 0 
    variants_and_orig = []
    for d in os.listdir(f):
        if d.endswith(".csv"):

            try:
                original, chunks = get_by_file(f"{f}/{d}")

                groups = {}
                for ch, _ in chunks:
                    var = ch['variant']
                    if var not in groups:
                        groups[var] = []
                    groups[var].append(ch)
                variants_and_orig.append((d, original, groups)) 
                # group by variant
                C += 1
                for k in all_samples.keys():
                    all_samples[k] += [ch[0][k]/original[k] for ch in chunks]
            except:
                print("Error with", d)
                continue

    sizes = []
    mcsizes = []
    compts = []
    exts = []
    for d, original, groups in variants_and_orig:
        # aggregate by variant
        for k, v in groups.items():
            sizes.append(np.mean([c['size']/original['size'] for c in v]))
            mcsizes.append(np.mean([c['mcsize']/original['mcsize'] for c in v]))
            compts.append(np.mean([c['compt']/original['compt'] for c in v]))
            exts.append(np.mean([c['ext']/original['ext'] for c in v]))


    print("Count", C)
    print("Count zero size", len([s for s in sizes if s == 0]))
    print("Count zero mc size", len([s for s in mcsizes if s == 0]))
    fig, ax = plt.subplots()

    def bykey(k, ax, vals, ticks, title=None, color='C0'):
        if ax:
            format_axes(ax, hide=['top', 'right'], show=['left', 'bottom'])
        # remove outliers, get 25% and 75% quantiles
        q1 = np.quantile(vals, 0.15)
        q3 = np.quantile(vals, 0.90)
        iqr = q3 - q1
        filtered = [ v for v in vals if v >= q1 - 1.5*iqr and v <= q3 + 1.5*iqr ]

        L=len(vals)
        print(k, np.median(filtered), np.mean(filtered), np.std(filtered), np.min(filtered), np.max(filtered), len([x for x in vals if x < 1.0])/L,  len([x for x in vals if x > 1.0])/L, len(vals),  len([x for x in vals if x == 1.0])/L)

        if ax:
            plot_distrib(ax, filtered, k, color, ticks, title)

    bykey("size", None, sizes, [1] + list(range(0, 16, 3)), "Relative Wasm\nsize distribution", 'C0')
    bykey("mcsize", ax, mcsizes, [1] +  list(range(0, 4)), "Relative machine code\nsize distribution", 'C0')
    bykey("compt", None, compts, [1] +  list(range(0, 21, 4)), "Relative compilation\ntime distribution", 'C1')

    plt.tight_layout(pad=2.0)
    plt.savefig("mcsize.pdf")

    fig, ax = plt.subplots()
    bykey("ext", ax, exts, [1] + list(range(0, 4)), "Relative execution\ntime distribution", 'C1')

    plt.tight_layout(pad=2.0)
    plt.savefig("ext.pdf")
    


if __name__ == '__main__':
    main(sys.argv[1])