def get_field(n):
    return [list(map(int, input().split())) for _ in range(n)]


def get_max_worms(field):
    max_worms = 0
    for row in field:
        worms = sum(row)
        if worms > max_worms:
            max_worms = worms
    for column in zip(*field):
        worms = sum(column)
        if worms > max_worms:
            max_worms = worms
    return max_worms


n, m = map(int, input().split())
print(get_max_worms(get_field(n)))
