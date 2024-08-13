from sys import stdin


def max_quantity(m, n):
    quantity = n - m + 1
    for num in map(str, range(m, n + 1)):
        quantity -= len({*num}) != len(num)
    return quantity


for line in stdin:
    m, n = map(int, line.split(' '))
    print(max_quantity(m, n))
