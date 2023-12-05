def withdraw(bits):
    bills = [0, 0, 0, 0]
    bills[0], bits = bits // 50, bits % 50
    bills[1], bits = bits // 10, bits % 10
    bills[2] = bits // 5
    bills[3] = bits % 5
    return bills


def print_formatted(test, bills):
    print(f'Teste {test}')
    print(*bills)
    print()


test = 1
while v := int(input()):
    bills = withdraw(v)
    print_formatted(test, bills)
    test += 1
