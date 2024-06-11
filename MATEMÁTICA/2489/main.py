from sys import stdin
from math import pi, tan


def h(a, d, r):
    x = (90 - r) * pi / 180
    return a - tan(x) * d


for line in stdin:
    a, d, r = map(float, line.split())
    print(f'{h(a, d, r):.4f}')
