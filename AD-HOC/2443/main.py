import math


def print_quotient(a, b, c, d):
    numerator = a * d + b * c
    denominator = b * d
    gcd = math.gcd(numerator, denominator)
    print(f'{numerator // gcd} {denominator // gcd}')


a, b, c, d = map(int, input().split())
print_quotient(a, b, c, d)
