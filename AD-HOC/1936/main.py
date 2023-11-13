def smallest_factorial_sum(n):
    k = 0
    factorials = [40320, 5040, 720, 120, 24, 6, 2, 1]
    for a in factorials:
        while n >= a:
            n -= a
            k += 1
        if n == 0:
            return k


n = int(input())
print(smallest_factorial_sum(n))
