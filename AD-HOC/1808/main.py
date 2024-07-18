total = 0
n = 0
s = int(input())
while s > 0:
    digit = s % 10
    if digit > 0:
        total += digit
    else:
        s //= 10
        total += 10
    s //= 10
    n += 1
print(f'{total / n:.2f}')
