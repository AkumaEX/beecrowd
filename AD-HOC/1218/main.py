from sys import stdin


def get_shoes():
    shoes = {}
    line = input().strip().split()
    while line:
        size, genre = line.pop(0), line.pop(0)
        if size not in shoes:
            shoes[size] = {'F': 0, 'M': 0}
        shoes[size][genre] += 1
    return shoes


def formatted_print(c, n, shoes):
    f = shoes[n]['F'] if n in shoes else 0
    m = shoes[n]['M'] if n in shoes else 0
    if c:
        print()
    print(f"Caso {c + 1}:")
    print(f"Pares Iguais: {f + m}")
    print(f"F: {f}")
    print(f"M: {m}")


for c, n in enumerate(map(str.strip, stdin)):
    shoes = get_shoes()
    formatted_print(c, n, shoes)
