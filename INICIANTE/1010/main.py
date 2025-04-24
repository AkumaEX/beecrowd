total = 0
for _ in range(2):
    code, quantity, value = map(float, input().split())
    total += quantity * value
print(f'VALOR A PAGAR: R$ {total:.2f}')
