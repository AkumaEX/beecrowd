import sys


def can_catch(d, vf, vg):
    sg = vg * 12 / vf
    return sg * sg >= d * d + 12 * 12


for line in sys.stdin:
    d, vf, vg = tuple(map(int, line.split()))
    if can_catch(d, vf, vg):
        print('S')
    else:
        print('N')
