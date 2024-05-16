import re


def sum_numbers(string):
    return sum(map(int, re.findall('\d+', string)))


n = int(input())
for _ in range(n):
    print(sum_numbers(input()))
