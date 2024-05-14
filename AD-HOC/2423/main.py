def max_cakes(a, b, c):
    return min(a // 2, b // 3, c // 5)


a, b, c = map(int, input().split())
print(max_cakes(a, b, c))
