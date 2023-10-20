import sys
import re


def translate(line):
    line = re.sub(r'_(.*?)_', r'<i>\1</i>', line.strip())
    return re.sub(r'\*(.*?)\*', r'<b>\1</b>', line.strip())


for line in sys.stdin:
    print(translate(line))
