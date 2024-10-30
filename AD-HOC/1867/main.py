def transform(number):
    while len(number) > 1:
        number = str(sum(map(int, list(number))))
    return number


def compare(m, n):
    if int(m) > int(n):
        return 1
    if int(m) < int(n):
        return 2
    return 0


m, n = input().split()
while m != '0' or n != '0':
    print(compare(transform(m), transform(n)))
    m, n = input().split()
