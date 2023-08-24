def _first_pass(text):
    return list(map(lambda c: chr(ord(c)+3) if c.isalpha() else c, text))


def _second_pass(text):
    return text[::-1]


def _third_pass(text):
    for i in range(len(text)//2, len(text)):
        text[i] = chr(ord(text[i])-1)
    return text


def encrypt(text):
    return ''.join(_third_pass(_second_pass(_first_pass(text))))


N = int(input())
for i in range(N):
    print(encrypt(input()))
