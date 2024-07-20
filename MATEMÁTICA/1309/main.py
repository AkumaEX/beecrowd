from sys import stdin


def formatted_print(dollars, cents):
    print(f'${dollars:,}.{cents:02d}')


for dollars in map(int, stdin):
    cents = int(next(stdin))
    formatted_print(dollars, cents)
