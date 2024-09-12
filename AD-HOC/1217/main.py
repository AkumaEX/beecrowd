total_price, total_weight = 0.0, 0.0
n = int(input())
for day in range(1, n + 1):
    total_price += float(input())
    weight = len(input().split())
    print(f'day {day}: {weight} kg')
    total_weight += weight
print(f'{total_weight / n:.2f} kg by day')
print(f'R$ {total_price / n:.2f} by day')
