from sys import stdin


def area(l):
    return l**2 * 2 * 3**(0.5) / 5


for l in map(int, stdin):
    print(f'{area(l):.2f}')
