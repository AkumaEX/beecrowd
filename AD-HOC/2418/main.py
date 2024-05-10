def score(n):
    n.sort()
    return n[1] + n[2] + n[3]

n = list(map(float, input().split()))
print(f'{score(n):.1f}')
