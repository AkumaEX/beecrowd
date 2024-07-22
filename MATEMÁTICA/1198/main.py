from sys import stdin

for line in stdin:
    hashmat, opponent = map(int, line.split())
    print(f'{abs(hashmat - opponent)} ')
