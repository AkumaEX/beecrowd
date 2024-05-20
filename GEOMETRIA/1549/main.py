from math import pi


def h(n, l, b, B, H):
    if b == B:
        return l / (n * pi * b**2)
    r = (((3 * l * (B - b)) / (n * pi * H)) + b**3)**(1/3)
    return H * (r - b) / (B - b)


c = int(input())
for _ in range(c):
    n, l = map(int, input().split())
    b, B, H = map(int, input().split())
    print(f'{h(n, l, b, B, H):.2f}')
