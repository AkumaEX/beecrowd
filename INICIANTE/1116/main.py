def formatted_print(x, y):
    print(f'{x / y:.1f}' if y else 'divisao impossivel')


n = int(input())
for _ in range(n):
    x, y = map(int, input().split())
    formatted_print(x, y)
