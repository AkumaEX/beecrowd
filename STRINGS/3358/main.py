import re

pattern = re.compile(r'[^aeiou]{3,}', re.IGNORECASE)
n = int(input())
for _ in range(n):
    name = input()
    if pattern.search(name):
        print(f'{name} nao eh facil')
    else:
        print(f'{name} eh facil')
