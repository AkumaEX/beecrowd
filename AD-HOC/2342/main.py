def is_overflow(p, c, q, n):
    result = int(p) + int(q) if c == '+' else int(p) * int(q)
    return result > n


n = int(input())
p, c, q = input().strip().split()
print('OVERFLOW' if is_overflow(p, c, q, n) else 'OK')
