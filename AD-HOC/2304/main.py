def total(i, n):
    players = {'D': i, 'E': i, 'F': i}
    for _ in range(n):
        transaction = input().split()
        if transaction[0] == 'C':
            players[transaction[1]] -= int(transaction[2])
        elif transaction[0] == 'V':
            players[transaction[1]] += int(transaction[2])
        else:
            players[transaction[1]] += int(transaction[3])
            players[transaction[2]] -= int(transaction[3])
    return players.values()


i, n = map(int, input().split())
print(*total(i, n))
