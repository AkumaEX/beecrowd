from sys import stdin


def get_pairs(n):
    pairs = {}
    for _ in range(n):
        m, l = input().split()
        if m not in pairs:
            pairs[m] = {'E': 0, 'D': 0}
        pairs[m][l] += 1
    return pairs


def get_total(pairs):
    total = 0
    for pair in pairs.values():
        total += min(pair['E'], pair['D'])
    return total


for n in map(int, stdin):
    pairs = get_pairs(n)
    print(get_total(pairs))
