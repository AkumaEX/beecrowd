class Point():
    def __init__(self, x, y):
        self.x = x
        self.y = y


def get_black_hole_point(s1_before, s1_after, s2_before, s2_after):
    x1 = (s1_before.x + s1_after.x) / 2
    y1 = (s1_before.y + s1_after.y) / 2
    m1 = (s1_before.y - s1_after.y) / (s1_before.x - s1_after.x)

    x2 = (s2_before.x + s2_after.x) / 2
    y2 = (s2_before.y + s2_after.y) / 2
    m2 = (s2_before.y - s2_after.y) / (s2_before.x - s2_after.x)

    if m1 == 0:
        if m2 == 0:
            return Point(x1, y2)
        return Point(x1, y2 - (x1 - x2) / m2)

    x = ((y2 - y1) * m1 * m2 + ((m1 * x2) - (m2 * x1))) / (m1 - m2)
    y = y1 - (x - x1) / m1
    return Point(x, y)


def print_formatted(c, point):
    print('Caso #{}: {:.2f} {:.2f}'.format(c, point.x, point.y))


t = int(input())
for c in range(1, t+1):
    s1_before = Point(*map(float, input().split()))
    s2_before = Point(*map(float, input().split()))
    s1_after = Point(*map(float, input().split()))
    s2_after = Point(*map(float, input().split()))

    black_hole = get_black_hole_point(s1_before, s1_after, s2_before, s2_after)
    print_formatted(c, black_hole)
