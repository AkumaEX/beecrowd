def sum_between(a, b):
    return (a + b) * (b - a + 1) // 2


a, b = map(int, input().split())
print(sum_between(a, b))
