import sys
import math


def distance(x1, y1, x2, y2):
    return math.sqrt((x1-x2)**2 + (y1 - y2)**2)


for line in sys.stdin:
    r1, x1, y1, r2, x2, y2 = tuple(map(int, line.split()))
    if distance(x1, y1, x2, y2) + r2 > r1:
        print('MORTO')
    else:
        print('RICO')
