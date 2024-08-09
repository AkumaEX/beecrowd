test = 1
while r := int(input()):
    print(f'Teste {test}')
    total_a, total_b = 0, 0
    for _ in range(r):
        a, b = map(int, input().split())
        total_a += a
        total_b += b
    print('Aldo' if total_a > total_b else 'Beto', end='\n\n')
    test += 1
