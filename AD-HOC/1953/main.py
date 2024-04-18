from sys import stdin


def attended(n):
    epr, ehd, intruders = 0, 0, 0
    for _ in range(n):
        course = next(stdin).split()[1]
        if course == 'EPR':
            epr += 1
        elif course == 'EHD':
            ehd += 1
        else:
            intruders += 1
    return epr, ehd, intruders


def formatted_print(epr, ehd, intruders):
    print(f'EPR: {epr}')
    print(f'EHD: {ehd}')
    print(f'INTRUSOS: {intruders}')


for n in map(int, stdin):
    epr, ehd, intruders = attended(n)
    formatted_print(epr, ehd, intruders)
