def get_minimum(r, n):
    for minimum in range(0, 27):
        if r <= n * (1 + minimum):
            return minimum
    return -1

c = 1
r, n = map(int, input().split())
while r and n:
    minimum = get_minimum(r, n)
    print(f'Case {c}: {minimum if minimum >= 0 else "impossible"}')
    c += 1
    r, n = map(int, input().split())
