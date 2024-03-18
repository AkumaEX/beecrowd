def scored_all_matches(x):
    for goals in x:
        if goals == 0:
            return 0
    return 1

players = 0
n = int(input().split()[0])
for _ in range(n):
    x = map(int, input().split())
    players += scored_all_matches(x)
print(players)
