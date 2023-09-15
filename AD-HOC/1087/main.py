def diagonal_search(x1, y1, x2, y2, h, v):
    if x1 < 1 or x1 > 8 or y1 < 0 or y1 > 8:
        return False
    if x1 == x2 and y1 == y2:
        return True
    return diagonal_search(x1 + h, y1 + v, x2, y2, h, v)

x1, y1, x2, y2 = tuple(map(int, input().split()))
while (x1 > 0):
    if (x1 == x2 and y1 == y2):
        print(0)
    elif x1 == x2 or y1 == y2 or diagonal_search(x1, y1, x2, y2, -1, -1) or diagonal_search(x1, y1, x2, y2, -1, 1) or diagonal_search(x1, y1, x2, y2, 1, -1) or diagonal_search(x1, y1, x2, y2, 1, 1):
        print(1)
    else:
        print(2)
    x1, y1, x2, y2 = tuple(map(int, input().split()))
