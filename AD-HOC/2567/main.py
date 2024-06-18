from sys import stdin


def max_lethality(n, a):
    a.sort()
    lethality = 0
    for i in range(n // 2):
        lethality += a[n-1 - i] - a[i]
    return lethality


for n in map(int, stdin):
    a = list(map(int, next(stdin).split()))
    print(max_lethality(n, a))
