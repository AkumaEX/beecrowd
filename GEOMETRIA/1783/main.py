def get_coordinates(x1_before, y1_before, x1_after, y1_after, x2_before, y2_before, x2_after, y2_after):
    xm1, ym1, m1 =_get_params(x1_before, y1_before, x1_after, y1_after)
    xm2, ym2, m2 =_get_params(x2_before, y2_before, x2_after, y2_after)
    
    if m1 == 0:
        return xm1, ym2 + m2 * (xm1 - xm2)
    if m2 == 0:
        return xm2, ym1 + m1 * (xm2 - xm1)
    
    x = (m1 * xm1 - ym1 - m2 * xm2 + ym2) / (m1 - m2)
    y = ym1 + m1 * (x - xm1)
    return x, y

def _get_params(x_before, y_before, x_after, y_after):
    xm = (x_before + x_after) / 2
    ym = (y_before + y_after) / 2
    m = -(x_before - x_after) / (y_before - y_after) if y_before != y_after else 0
    return xm, ym, m


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
