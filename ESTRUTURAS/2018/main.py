from sys import stdin


def get_medals():
    medals = {}
    for description in stdin:
        for medal in range(3):
            country = input()
            if not country in medals:
                medals[country] = [0, 0, 0]
            medals[country][medal] += 1
    return medals


def formatted_print(medals):
    print('Quadro de Medalhas')
    for country in sorted(medals.items(), key=lambda country: [-country[1][0], -country[1][1], -country[1][2], country[0]]):
        print(*[country[0], *country[1]])


medals = get_medals()
formatted_print(medals)
