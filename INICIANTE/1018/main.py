n = int(input())
print(n)
for bill in [100, 50, 20, 10, 5, 2, 1]:
    print(f'{n // bill} nota(s) de R$ {bill},00')
    n %= bill
