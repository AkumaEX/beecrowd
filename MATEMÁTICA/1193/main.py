def formatted_print(c, x, y):
    print(f'Case {c}:')
    if y == 'bin':
        integer = int(x, 2)
        print(f'{integer} dec')
        print(f'{integer:x} hex')
    elif y == 'hex':
        integer = int(x, 16)
        print(f'{integer} dec')
        print(f'{integer:b} bin')
    else:
        integer = int(x)
        print(f'{integer:x} hex')
        print(f'{integer:b} bin')
    print()


n = int(input())
for c in range(1, n + 1):
    x, y = input().split()
    formatted_print(c, x, y)
