def min_times(p):
    times = 0
    cards = [card for card in range(p)]
    print(cards)
    while True:
        temp = []
        for i in range(p // 2):
            temp.append(cards[i + p // 2])
            temp.append(cards[i])
        print(temp)
        cards = temp
        times += 1
        if ordered(p, cards):
            return times

def ordered(p, cards):
    for i in range(p):
        if cards[i] != i:
            return False
    return True


for p in range(2, 20, 2):
    print(f'p: {p} -> {min_times(p)}')