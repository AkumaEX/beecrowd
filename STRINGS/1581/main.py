def language(k):
    languages = {input() for _ in range(k)}
    return languages.pop() if len(languages) == 1 else 'ingles'


n = int(input())
for _ in range(n):
    k = int(input())
    print(language(k))
