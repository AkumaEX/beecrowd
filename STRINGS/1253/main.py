def decode(code, pos):
    return ''.join(map(lambda char: decrypt(char, pos), code))


def decrypt(char, pos):
    return chr(((ord(char) - 65 - pos) % 26) + 65)


n = int(input())
for _ in range(n):
    code = input()
    pos = int(input())
    print(decode(code, pos))
