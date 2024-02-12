import math
import sys

for line in sys.stdin:
    a, b, c = map(float, line.split())
    a *= 3.141592654/180
    print('%.2f' % ((math.tan(a) * b + c) * 5))
