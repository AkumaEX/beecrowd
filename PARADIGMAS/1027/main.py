import sys
from collections import defaultdict


def lis(a, b):
    if a and not b:
        return 1
    if not a:
        return 0
    if a[0] == b[0]:
        return 1 + lis(b[1:], a[1:])
    if a[0] < b[0]:
        return 1 + lis(b, a[1:])
    return lis(a, b[1:])


for line in sys.stdin:
    y_ax = defaultdict(list)
    points = []
    n = int(line)
    for _ in range(n):
        x, y = input().split(' ')
        y_ax[int(y)].append(int(x))
    for y, x_up in y_ax.items():
        x_down = y_ax.get(y-2, [])
        points.append(lis(sorted(x_up), sorted(x_down)))
        points.append(lis(sorted(x_down), sorted(x_up)))
    print(max(points))
