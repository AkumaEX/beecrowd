n = int(input())
for _ in range(n):
    seq = input()
    digit1, letter, digit2 = int(seq[0]), seq[1], int(seq[2])
    if (digit2 == digit1):
        print(digit2 * digit1)
    elif (letter.isupper()):
        print(digit2 - digit1)
    else:
        print(digit2 + digit1)
