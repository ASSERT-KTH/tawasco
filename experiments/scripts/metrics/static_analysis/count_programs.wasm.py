import matplotlib.pyplot as plt
import sys
import json
from latexify import *

def process(meta, crow):
    ys = []
    # crow = []

    for k, v in meta.items():
        ys.append(v)

    print(crow)
    variants_crow = crow["CROW"]["projects"] [0]["modules"][0]["functions"]
    count_crow = [int(x["variants_count"]) for x in variants_crow]

    latexify(fig_width=10, fig_height=2, font_size=11, tick_size=11)
    fig, ax = plt.subplots()
    format_axes(ax, show = ['left', 'bottom'], hide=['top', 'right'])
    # ax.set_xlabel("")
    ax.set_ylabel("Number of programs")

    # sort
    ys = sorted(ys, reverse=True)
    # According to the CROW paper the other variants have only 2 variants
    count_crow = count_crow + [2]*(len(ys) - len(count_crow))

    count_crow = sorted(count_crow, reverse=True)
    ax.bar([x - 0.5 for x in range(len(ys))], ys, align='center', alpha=0.5, label="wasm-mutate")
    ax.bar([x + 0.5 for x in range(len(count_crow))], count_crow, align='center', alpha=0.5, label="CROW")

    ax.set_yscale('log')
    ax.set_xticks([])

    plt.legend()
    plt.tight_layout()
    plt.savefig("count.pdf")

if __name__ == "__main__":

    metadata = json.load(open(sys.argv[1]))
    crow = json.load(open(sys.argv[2]))
    print(crow)

    process(metadata, crow)