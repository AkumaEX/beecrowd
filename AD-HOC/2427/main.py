from math import log2, floor

def total(l):
    return 2**(2*floor(log2(l)))


l = int(input())
print(total(l))
