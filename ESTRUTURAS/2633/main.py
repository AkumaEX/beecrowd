from sys import stdin

def formatted_print(meats):
    print(' '.join(dict(sorted(meats.items())).values()))


for line in stdin:
    meats = {}
    n = int(line)
    for _ in range(n):
        meat, date = input().split()
        meats[int(date)] = meat
    formatted_print(meats)