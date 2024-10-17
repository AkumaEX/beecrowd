def number(word):
    if len(word) > 3:
        return 3
    if word[0] == 'o' and word[1] == 'n' or word[0] == 'o' and word[2] == 'e' or word[1] == 'n' and word[2] == 'e':
        return 1
    return 2


n = int(input())
for _ in range(n):
    print(number(input()))
