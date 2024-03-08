def winner(s, values):
    closest = sorted(values, key=lambda value: abs(s - value))[0]
    return values.index(closest) + 1


n = int(input())
for _ in range(n):
    s = int(input().split()[1])
    values = list(map(int, input().split()))
    print(winner(s, values))
