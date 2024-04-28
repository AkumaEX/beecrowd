from sys import stdin

def area(n, h, c, l):
    d = (h**2 + c**2)**0.5
    return n *  d * l / 10000

for n in map(int, stdin):
    h, c, l = map(int, next(stdin).split())
    print(f'{area(n, h, c, l):.4f}')
    