def sequence(cards):
    if cards[0] < cards[1] < cards[2] < cards[3] < cards[4]:
        return 'C'
    if cards[0] > cards[1] > cards[2] > cards[3] > cards[4]:
        return 'D'
    return 'N'


cards = list(map(int, input().split()))
print(sequence(cards))
