from sys import stdin


def interest_rate(x, y):
    return 100 * (y - x) / x


def formatted_print(project, rate):
    print(f'Projeto {project + 1}:')
    print(f'Percentual dos juros da aplicacao: {rate:.2f} %')
    print()


for project, line in enumerate(stdin):
    x, y = map(float, line.split())
    rate = interest_rate(x, y)
    formatted_print(project, rate)
