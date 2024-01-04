def is_enough(c, p, f):
    return c * f <= p

c, p, f = map(int, input().split())
print('S' if is_enough(c, p, f) else 'N')
