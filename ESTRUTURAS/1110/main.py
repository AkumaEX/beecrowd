from collections import deque


def get_cards(deck):
    discarded = deque()
    while len(deck) > 1:
        discarded.append(deck.popleft())
        deck.rotate(-1)
    return discarded, deck


def print_formatted(discarded, remaining):
    print('Discarded cards: ', end='')
    print(*discarded, sep=', ')
    print('Remaining card:', remaining.pop())


while (n := int(input())):
    deck = deque(range(1, n+1))
    discarded, remaining = get_cards(deck)
    print_formatted(discarded, remaining)
