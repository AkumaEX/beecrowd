def total(code, qty):
    prices = [4.0, 4.5, 5.0, 2.0, 1.5]
    return prices[code-1] * qty


code, qty = map(int, input().split())
print(f'Total: R$ {total(code, qty):.2f}')
