n = int(input())
for _ in range(n):
    x, y = tuple(map(int, input().split()))
    area = x * y // 2
    print(f'{area} cm2')
