def is_possible(b, n):
    banks = list(map(int, input().split()))
    for _ in range(n):
        d, c, v = map(int, input().split())
        banks[d-1] -= v
        banks[c-1] += v
    for reserve in banks:
        if reserve < 0:
            return False
    return True


b, n = map(int, input().split())
while (b or n):
    print('S' if is_possible(b, n) else 'N')
    b, n = map(int, input().split())
