from sys import stdin


def elapsed(s, va, vb):
    return s / (va - vb)


def formatted_print(time):
    print('impossivel' if time < 0 else f'{time:.2f}')


for line in stdin:
    s, va, vb = map(int, line.split())
    formatted_print(elapsed(s, va, vb))
