import sys
import math

for line in sys.stdin:
    x, y = tuple(map(int, line.split()))
    print(2 * (x + y) // math.gcd(x, y))
