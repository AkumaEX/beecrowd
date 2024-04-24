from sys import stdin
from math import sin, radians


def largest_side(f):
    return f * sin(radians(108)) / sin(radians(63))


for f in map(float, stdin):
    print(f'{largest_side(f):.10f}')
