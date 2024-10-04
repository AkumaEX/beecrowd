from sys import stdin


def gcd(a, b):
    if b == 0:
        return a
    return gcd(b, a % b)


def lcm(a, b):
    return a * b // gcd(a, b)


def next_alignment(m, l1, l2, l3):
    return lcm(lcm(l1, l2), l3) - m


for m in map(int, stdin):
    l1, l2, l3 = map(int, input().split())
    print(next_alignment(m, l1, l2, l3))
