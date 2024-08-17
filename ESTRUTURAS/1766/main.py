def get_reindeers(n):
    reindeers = []
    for _ in range(n):
        s, w, a, h = input().split()
        reindeers.append([s, int(w), int(a), float(h)])
    return sorted(reindeers, key=lambda x: [-x[1], x[2], x[3]])


def formatted_print(scenario, m, reindeers):
    print(f'CENARIO {{{scenario}}}')
    for i in range(m):
        print(f'{i + 1} - {reindeers[i][0]}')


t = int(input())
for scenario in range(1, t+1):
    n, m = map(int, input().split())
    reindeers = get_reindeers(n)
    formatted_print(scenario, m, reindeers)
