from math import ceil

x, y = map(int, input().split())
print(ceil(y / (y - x)))
