import sys

for line in sys.stdin:
    line = list(line.lower())
    line.pop() # remove newline
    caps = True
    for i, character in enumerate(line):
        if character == ' ':
            continue
        if caps:
            line[i] = character.upper()
        caps = not caps
    print(''.join(line))
