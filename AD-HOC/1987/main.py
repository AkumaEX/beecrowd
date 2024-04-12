import sys


def digit_sum_of(m):
    return sum(map(int, list(m)))


for line in sys.stdin:
    m = line.split()[1]
    digit_sum = digit_sum_of(m)
    print(f"{digit_sum} {'sim' if digit_sum % 3 == 0 else 'nao'}")
