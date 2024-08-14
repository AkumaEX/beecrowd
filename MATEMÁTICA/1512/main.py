from math import lcm


def total(n, a, b):
    return n // a + n // b - n // lcm(a, b)


n, a, b = map(int, input().split())
while n:
    print(total(n, a, b))
    n, a, b = map(int, input().split())
