import sys

for angle in sys.stdin:
    if int(angle) % 6 == 0:
        print('Y')
    else:
        print('N')
