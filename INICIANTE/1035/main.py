def is_valid(a, b, c, d):
    if b > c and d > a and c + d > a + b and c >= 0 and d >= 0 and a % 2 == 0:
        return True
    return False


a, b, c, d = map(int, input().split())
print('Valores aceitos' if is_valid(a, b, c, d) else 'Valores nao aceitos')
