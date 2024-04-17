def get_dictionary(m):
    dictionary = {}
    for _ in range(m):
        japanese, portuguese = input().strip(), input().strip()
        dictionary[japanese] = portuguese
    return dictionary


def translate_lines(n, dictionary):
    for _ in range(n):
        words = input().strip().split()
        for i, japanese in enumerate(words):
            if dictionary.get(japanese):
                words[i] = dictionary[japanese]
        print(' '.join(words))


t = int(input())
for _ in range(t):
    m, n = map(int, input().split())
    dictionary = get_dictionary(m)
    translate_lines(n, dictionary)
    print()
