def distance(x1, y1, x2, y2):
    return ((x2 - x1)**2 + (y2 - y1)**2)**0.5


x1, y1 = map(float, input().split())
x2, y2 = map(float, input().split())
print(f'{distance(x1, y1, x2, y2):.4f}')
