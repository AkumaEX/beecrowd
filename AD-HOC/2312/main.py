def get_medals():
    medals = []
    n = int(input())
    for _ in range(n):
        country, gold, silver, bronze = input().split()
        medals.append([country, int(gold), int(silver), int(bronze)])
    return medals


def formatted_print(medals):
    countries = sorted(medals, key=lambda country: [-country[1], -country[2], -country[3], country[0]])
    for country in countries:
        print(f'{country[0]} {country[1]} {country[2]} {country[3]}')


medals = get_medals()
formatted_print(medals)
