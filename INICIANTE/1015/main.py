from math import sqrt

x1, y1 = tuple(map(float, input().split()))
x2, y2 = tuple(map(float, input().split()))

distance = sqrt((x2-x1)**2 + (y2-y1)**2)
print(f'{distance:.4f}')
