def fits(b, a):
    num_digits_b = len(str(b))
    last_digits_a = a % 10**num_digits_b
    return last_digits_a == b


n = int(input())
for _ in range(n):
    a, b = tuple(map(int, input().split()))
    if fits(b, a):
        print('encaixa')
    else:
        print('nao encaixa')
