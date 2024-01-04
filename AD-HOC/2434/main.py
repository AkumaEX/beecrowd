n, s = map(int, input().split())
min = s
for _ in range(n):
    s += int(input())
    if s < min:
        min = s
print(min)
