def get_winner():
    participant = 1
    for ticket in map(int, input().split()):
        if participant == ticket:
            break
        participant += 1
    return participant


def print_formatted(test, winner):
    print(f'Teste {test}\n{winner}\n')


test = 1
while int(input()):
    winner = get_winner()
    print_formatted(test, winner)
    test += 1
