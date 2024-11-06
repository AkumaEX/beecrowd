def is_smaller(a, b, c, d):
    return a < c and b < d or a < d and b < c


n = int(input())
for _ in range(n):
    a, b, c, d = map(int, input().split())
    print('S' if is_smaller(a, b, c, d) else 'N')
