a, b, c, d = map(int, input().split())
accepted = b > c and d > a and c + d > a + b and c >= 0 and d >= 0 and a % 2 == 0
print('Valores aceitos' if accepted else 'Valores nao aceitos')
