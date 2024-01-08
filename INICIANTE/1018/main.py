def print_formatted(n):
    print(n)
    for bill in [100, 50, 20, 10, 5, 2, 1]:
        print(f'{n // bill} nota(s) de R$ {bill},00')
        n = n % bill


n = int(input())
print_formatted(n)
