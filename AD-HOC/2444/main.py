v, t = map(int, input().split())
a = list(map(int, input().split()))
for i in range(t):
    v += a[i]
    if v < 0:
        v = 0
    elif v > 100:
        v = 100
print(v)
