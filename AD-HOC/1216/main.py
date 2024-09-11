from sys import stdin

distance, friends = 0, 0
for _ in stdin:
    distance += int(input())
    friends += 1
print(f'{distance / friends:.1f}')
