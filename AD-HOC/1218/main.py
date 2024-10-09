from sys import stdin


def get_shoes(n):
    shoes = {'F': 0, 'M': 0}
    line = input().strip().split()
    for i in range(0, len(line), 2):
        size, genre = int(line[i]), line[i+1]
        shoes[genre] += size == n
    return shoes


def formatted_print(c, shoes):
    if c > 1:
        print()
    print(f"Caso {c}:")
    print(f"Pares Iguais: {shoes['F'] + shoes['M']}")
    print(f"F: {shoes['F']}")
    print(f"M: {shoes['M']}")


for c, n in enumerate(map(int, stdin), start=1):
    formatted_print(c, get_shoes(n))
