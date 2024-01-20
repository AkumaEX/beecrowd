distance = 0
n = int(input())
for _ in range(n):
    t, v = map(int, input().split())
    distance += t * v
print(distance)
