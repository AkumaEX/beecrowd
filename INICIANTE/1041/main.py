def quadrant(x, y):
    if x == 0 or y == 0:
        if x == 0 and y == 0:
            return 'Origem'
        return 'Eixo Y' if x == 0 else 'Eixo X'
    if x > 0:
        return 'Q1' if y > 0 else 'Q4'
    return 'Q2' if y > 0 else 'Q3'

x, y = map(float, input().split())
print(quadrant(x, y))