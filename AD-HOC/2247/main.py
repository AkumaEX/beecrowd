test = 1
while (n := int(input())):
    print(f'Teste {test}')
    difference = 0
    for _ in range(n):
        j, z = map(int, input().split())
        difference += j - z
        print(difference)
    print()
    test += 1
