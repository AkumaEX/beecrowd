import re


def results(text, word):
    indexes = list(map(lambda match: str(match.start()), re.finditer(fr'\b{word}\b', text)))
    return ' '.join(indexes) if indexes else -1


q = int(input())
for _ in range(q):
    text = input().strip()
    word = input().strip()
    print(results(text, word))
