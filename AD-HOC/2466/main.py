def last_color(colors):
    while len(colors) > 1:
        colors = _next_row(colors)
    return colors[0]


def _next_row(colors):
    next_row = []
    for i in range(len(colors)-1):
        next_row.append(1 if colors[i] == colors[i+1] else -1)
    return next_row


input() # ignore first line
colors = list(map(int, input().split()))
print('preta' if last_color(colors) > 0 else 'branca')
