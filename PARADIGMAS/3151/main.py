def get_yogurts(n):
    yogurts = {}
    for _ in range(n):
        value, volume = tuple(map(int, input().strip().split()))
        if value / volume in yogurts:
            yogurts[value / volume] += volume
        else:
            yogurts[value / volume] = volume
    return yogurts


def get_maximum_hotness(x, yogurts):
    maximum_hotness = 0
    for ratio, volume in dict(sorted(yogurts.items(), reverse=True)).items():
        if x > volume:
            maximum_hotness += ratio * volume
            x -= volume
        else:
            maximum_hotness += ratio * x
            break
    return maximum_hotness


def print_formatted(maximum_hotness):
    print(format(maximum_hotness, '.2f'))


t = int(input())
for _ in range(t):
    n, x = tuple(map(int, input().strip().split()))
    yogurts = get_yogurts(n)
    maximum_hotness = get_maximum_hotness(x, yogurts)
    print_formatted(maximum_hotness)
