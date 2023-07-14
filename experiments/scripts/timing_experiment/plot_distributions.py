import sys
import json
import os


if __name__ == "__main__":

    file = open(sys.argv[1], 'rb').read().decode('utf-8', errors='ignore')

    timeshort = []
    timeslong = []

    for l in file.split("\n"):
        if l:
            try:
                if l[0] == 'L':
                    timeslong.append(int(l[2:]))
                if l[0] == 's':
                    timeshort.append(int(l[2:]))
            except:
                pass

    import matplotlib.pyplot as plt

    plt.hist(timeslong, bins=100)
    plt.hist(timeshort, bins=100)
    plt.show()
    # Run a Mann-Whitney U test
    from scipy.stats import mannwhitneyu
    stat, p = mannwhitneyu(timeslong, timeshort)
    print('Statistics=%.3f, p=%.3f' % (stat, p))
    # Interpretation
    alpha = 0.05
    if p > alpha:
        print('Same distribution (fail to reject H0)')
    else:
        print('Different distribution (reject H0)')
        