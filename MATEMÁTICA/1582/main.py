from sys import stdin
import math


def classify(sides):
    sides.sort()
    if sides[2]**2 == sides[1]**2 + sides[0]**2:
        if math.gcd(*sides) == 1:
            return 'tripla pitagorica primitiva'
        return 'tripla pitagorica'
    return 'tripla'


for line in stdin:
    sides = list(map(int, line.split()))
    print(classify(sides))
