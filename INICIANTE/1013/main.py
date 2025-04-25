def maior(a, b):
    return (a + b + abs(a-b)) // 2

a, b, c = map(int, input().split())
print(f'{maior(maior(a, b), c)} eh o maior')
