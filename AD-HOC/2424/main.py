def ball_in(x, y):
    return 0 <= x <= 432 and 0 <= y <= 468


x, y = map(int, input().split())
print('dentro' if ball_in(x, y) else 'fora')
