def no_zero_sum(m, n):
    return str(m + n).replace('0', '')


m, n = map(int, input().split())
while m and n:
    print(no_zero_sum(m, n))
    m, n = map(int, input().split())
