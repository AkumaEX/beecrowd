from sys import stdin
import re


def min_cycles(sequence, p):
    return len(re.findall(r'R{1,%d}|W{1}' % p, sequence))


for sequence in stdin:
    p = int(next(stdin))
    print(min_cycles(sequence, p))
