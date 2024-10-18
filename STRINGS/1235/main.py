def decypher(word):
    length = len(word)
    middle = length // 2
    result = [''] * length
    chars = list(word)
    for i in range(length):
        result[length - 1 - i] = chars[(middle + i) % length]
    return ''.join(result)


n = int(input())
for _ in range(n):
    word = input()
    print(decypher(word))
