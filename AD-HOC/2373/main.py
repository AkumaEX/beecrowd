total = 0
n = int(input())
for _ in range(n):
    l, c = map(int, input().split())
    total += c if l > c else 0
print(total)
