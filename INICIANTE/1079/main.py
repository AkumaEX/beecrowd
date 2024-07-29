n = int(input())
for _ in range(n):
    a, b, c = map(float, input().split())
    print(f'{(a * 2 + b * 3 + c * 5) / 10:.1f}')
