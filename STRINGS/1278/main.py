import re


def get_lines(n):
    lines = []
    max_size = 0
    for _ in range(n):
        line = re.sub(r'\s+', ' ', input().strip())
        lines.append(line)
        line_size = len(line)
        if line_size > max_size:
            max_size = line_size
    return lines, max_size


def formatted_print(lines, max_size):
    for line in lines:
        print('{:>{max_size}}'.format(line, max_size=max_size))


n = int(input())
while (n > 0):
    lines, max_size = get_lines(n)
    formatted_print(lines, max_size)
    if (n := int(input())):
        print()
