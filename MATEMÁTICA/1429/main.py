def decimal(acm):
    factorial = [1, 1, 2, 6, 24, 120]
    result = 0
    i = 1
    while acm > 0:
        digit = acm % 10
        result += digit * factorial[i]
        i += 1
        acm //= 10
    return result


while acm := int(input()):
    print(decimal(acm))
