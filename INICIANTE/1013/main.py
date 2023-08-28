def maior(a, b):
    return (a + b + abs(a-b)) // 2

a, b, c = tuple(map(int, input().split()))
greatest = maior(maior(a, b), c)
print(f'{greatest} eh o maior')