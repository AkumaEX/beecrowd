def print_formatted(dwarves, n):
    teams = n // 3
    for team in range(teams):
        print(f'Time {team + 1}')
        for shift in range(3):
            print(' '.join(dwarves[team + teams * shift]))
        print()


n = int(input())
dwarves = [tuple(input().split()) for _ in range(n)]
sorted(dwarves).sort(key=lambda a: a[1], reverse=True)
print_formatted(dwarves, n)
