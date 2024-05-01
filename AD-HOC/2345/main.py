def difference(a, b, c, d):
    return abs(a - b - c + d)


a, b, c, d = map(int, input().split())
print(difference(a, b, c, d))
