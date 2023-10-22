def get_cards(deck):
    discarded = []
    while len(deck) > 1:
        discarded.append(deck.pop(0))
        deck.append(deck.pop(0))
    return discarded, deck


def print_formatted(discarded, remaining):
    print(f'Discarded cards: {", ".join(map(str, discarded))}')
    print(f'Remaining card: {remaining[0]}')


while (n := int(input())):
    deck = list(range(1, n+1))
    discarded, remaining = get_cards(deck)
    print_formatted(discarded, remaining)
