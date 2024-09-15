def sum_between(x, y):
    if x > y:
        x, y = y, x
    return sum(filter(lambda n: n % 13, range(x, y + 1)))


x = int(input())
y = int(input())
print(sum_between(x, y))
