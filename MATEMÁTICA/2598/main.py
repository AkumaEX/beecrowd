import math


def num_radars(n, m):
    return math.ceil(n / m)


c = int(input())
for _ in range(c):
    n, m = map(int, input().split())
    print(num_radars(n, m))
