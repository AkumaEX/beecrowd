import math

t = int(input())
for _ in range(t):
    n, m = tuple(map(int, input().split()))
    total = (n // 3) * (m // 3)
    print(total)
