import sys

for line in sys.stdin:
    v, t = tuple(map(int, line.split()))
    print(v * 2 * t)
