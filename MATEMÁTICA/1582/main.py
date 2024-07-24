from sys import stdin
import math


def formatted_print(sides):
    sides.sort()
    if sides[2]**2 == sides[1]**2 + sides[0]**2:
        if math.gcd(*sides) == 1:
            print('tripla pitagorica primitiva')
        else:
            print('tripla pitagorica')
    else:
        print('tripla')


for line in stdin:
    sides = list(map(int, line.split()))
    formatted_print(sides)
