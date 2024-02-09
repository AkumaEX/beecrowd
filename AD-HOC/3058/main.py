prices = []
n = int(input())
for _ in range(n):
    p, g = map(float, input().split())
    prices.append(1000 * p / g)
prices.sort()
print('%.2f' % prices[0])
