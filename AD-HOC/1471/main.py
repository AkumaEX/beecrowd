from sys import stdin


def not_returned(n):
    all_divers = {diver for diver in range(1, n+1)}
    returned = set(map(int, next(stdin).split()))
    return sorted(all_divers.difference(returned))


def formatted_print(divers):
    for diver in divers:
        print(f'{diver}', end=' ')
    print()


for line in stdin:
    n, r = map(int, line.split())
    if n > r:
        divers = not_returned(n)
        formatted_print(divers)
    else:
        next(stdin)
        print('*')
