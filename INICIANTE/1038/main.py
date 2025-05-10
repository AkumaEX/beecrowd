prices = [0.0, 4.0, 4.5, 5.0, 2.0, 1.5]
code, quantity = map(int, input().split())
print(f'Total: R$ {prices[code] * quantity:.2f}')
