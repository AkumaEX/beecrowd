def winner(x, y):
    rafael = (3 * x)**2 + y**2
    beto = 2 * x**2 + (5 * y)**2
    carlos = -100 * x + y**3

    if rafael > beto and rafael > carlos:
        return 'Rafael'
    elif beto > rafael and beto > carlos:
        return 'Beto'
    return 'Carlos'


n = int(input())
for _ in range(n):
    x, y = tuple(map(int, input().split()))
    print(f'{winner(x, y)} ganhou')
