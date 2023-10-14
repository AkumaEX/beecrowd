def elapsed(c):
    days = 0
    while c > 1:
        days += 1
        c /= 2
    return days


n = int(input())
for _ in range(n):
    c = float(input())
    print(f'{elapsed(c)} dias')
