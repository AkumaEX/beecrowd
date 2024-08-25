def formatted_print(m, n):
    if (m > n):
        m, n = n, m
    sequence = range(m, n + 1)
    print(f"{' '.join(map(str, sequence))} Sum={sum(sequence)}")


m, n = map(int, input().split())
while m > 0 and n > 0:
    formatted_print(m, n)
    m, n = map(int, input().split())
