def days(n, t):
    t = sorted(t, reverse=True)
    for i in range(n):
        t[i] += i + 2
    return max(t)


n = int(input())
t = map(int, input().split())
print(days(n, t))
