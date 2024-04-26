from itertools import combinations
from math import sqrt


def get_min_distance(points):
    distances = []
    for p1, p2 in combinations(points, 2):
        distance = 0
        for p in points:
            distance += _distance(*p1, *p2, *p)
        distances.append(abs(distance))
    return min(distances)


def _distance(x1, y1, x2, y2, x, y):
    return ((x2 - x1) * (y - y1) - (x - x1) * (y2 - y1)) / sqrt((x2 - x1)**2 + (y2 - y1)**2)


while (n := int(input())):
    points = []
    for _ in range(n):
        x, y = map(int, input().split())
        points.append((x, y))
    print(f'{get_min_distance(points):.3f}')
