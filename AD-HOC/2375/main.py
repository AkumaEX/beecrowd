def fits(n, a, l, p):
    return n <= a and n <= l and n <= p


n = int(input())
a, l, p = tuple(map(int, input().split()))
print('S' if fits(n, a, l, p) else 'N')
