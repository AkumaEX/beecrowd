def print_formatted(n):
    n += 0.0001
    print('NOTAS:')
    for bill in [100, 50, 20, 10, 5, 2]:
        print(f'{int(n / bill)} nota(s) de R$ {bill:.2f}')
        n = n % bill
    print('MOEDAS:')
    for coin in [1, 0.50, 0.25, 0.10, 0.05, 0.01]:
        print(f'{int(n / coin)} moeda(s) de R$ {coin:.2f}')
        n = n % coin


n = float(input())
print_formatted(n)
