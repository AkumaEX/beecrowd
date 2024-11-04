import re


def is_the_funniest():
    vowels = re.sub(r'[^aeiou]', '', input())
    return vowels == vowels[::-1]


print('S' if is_the_funniest() else 'N')
