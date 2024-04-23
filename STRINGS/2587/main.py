def is_possible(word1, word2, word3):
    first, second = -1, -1
    for index, letter in enumerate(word3):
        if letter == '_':
            first, second = (index, second) if first < 0 else (first, index)
    return word1[first] == word2[second] or word1[second] == word2[first]


c = int(input())
for _ in range(c):
    word1 = input()
    word2 = input()
    word3 = input()
    print('Y' if is_possible(word1, word2, word3) else 'N')
