x, y = map(int, input().split())
while x != y:
    print('Decrescente' if x > y else 'Crescente')
    x, y = map(int, input().split())
