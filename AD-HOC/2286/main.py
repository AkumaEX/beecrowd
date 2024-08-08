test = 1
while n := int(input()):
    p1, p2 = input(), input()
    print(f'Teste {test}')
    for _ in range(n):
        h1, h2 = map(int, input().split())
        print(p1 if (h1 + h2) % 2 == 0 else p2)
    print()
    test += 1
