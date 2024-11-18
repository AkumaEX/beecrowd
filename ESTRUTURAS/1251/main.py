from sys import stdin


def get_frequencies(line):
    frequencies = {}
    for c in map(ord, line.strip()):
        frequencies[c] = frequencies.get(c, 0) + 1
    return sorted(frequencies.items(), key=lambda frequency: [frequency[1], -frequency[0]])


def formatted_print(i, frequencies):
    if i > 0:
        print()
    for c, frequency in frequencies:
        print(f'{c} {frequency}')


for i, line in enumerate(stdin):
    formatted_print(i, get_frequencies(line))
