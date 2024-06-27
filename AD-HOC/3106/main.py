from functools import reduce

input()
s = map(int, input().split())
print(reduce(lambda max, students: max + students - students % 3, s, 0))
