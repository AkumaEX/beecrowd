a, b = 0, 0
n, t, l = map(int, input().split())
for _ in range(n // 2):
    s = int(input())
    if abs(t - s) <= l:
        a += abs(t - s)
        t = s
    s = int(input())
    if abs(t - s) <= l:
        b += abs(t - s)
        t = s
print(f'{a} {b}')
