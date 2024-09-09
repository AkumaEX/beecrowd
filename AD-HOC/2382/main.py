def fits(l, a, p, r):
    return (l**2 + a**2 + p**2)**0.5 <= r * 2


l, a, p, r = map(int, input().split())
print('S' if fits(l, a, p, r) else 'N')
