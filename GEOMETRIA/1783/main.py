def get_coordinates(x1_before, y1_before, x1_after, y1_after, x2_before, y2_before, x2_after, y2_after):
    xm1 = (x1_before + x1_after) / 2
    ym1 = (y1_before + y1_after) / 2
    m1 = -(x1_before - x1_after) / (y1_before - y1_after) if y1_before != y1_after else 0

    xm2 = (x2_before + x2_after) / 2
    ym2 = (y2_before + y2_after) / 2
    m2 = -(x2_before - x2_after) / (y2_before - y2_after) if y2_before != y2_after else 0

    if m1 == 0:
        x = xm1
        y = ym2 + m2 * (x - xm2)
    elif m2 == 0:
        x = xm2
        y = ym1 + m1 * (x - xm1)
    else:
        x = (m1 * xm1 - ym1 - m2 * xm2 + ym2) / (m1 - m2)
        y = ym1 + m1 * (x - xm1)
    return x, y


def print_formatted(c, x, y):
    print('Caso #{}: {:.2f} {:.2f}'.format(c, x, y))


t = int(input())
for c in range(1, t+1):
    x1_before, y1_before = tuple(map(float, input().split()))
    x2_before, y2_before = tuple(map(float, input().split()))
    x1_after, y1_after = tuple(map(float, input().split()))
    x2_after, y2_after = tuple(map(float, input().split()))

    x, y = get_coordinates(x1_before, y1_before, x1_after, y1_after, x2_before, y2_before, x2_after, y2_after)
    print_formatted(c, x, y)
