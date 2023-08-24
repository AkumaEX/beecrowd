import math


def prob(ev1, ev2, at, d):
    i = math.ceil(ev1 / d)
    n = math.ceil(ev2 / d) + i
    r = (6 - at)/at
    if (at == 3):
        return i / n
    return (1 - r**i)/(1 - r**n)


ev1, ev2, at, d = map(int, input().split())
while (ev1 != 0 and ev2 != 0 and at != 0 and d != 0):
    p = prob(ev1, ev2, at, d) * 100
    print('%.1f' % p)
    ev1, ev2, at, d = map(int, input().split())
