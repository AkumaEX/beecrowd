import sys


def factorial(n, lookup):
    if n < 2:
        return 1
    if not lookup.get(n):
        lookup[n] = n * factorial(n-1, lookup)
    return lookup[n]


lookup = {}
for data in sys.stdin:
    m, n = tuple(map(int, data.split()))
    print(factorial(m, lookup) + factorial(n, lookup))
