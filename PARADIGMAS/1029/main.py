def fibonacci(n, lookup):
    if n < 2:
        return n
    if not lookup.get(n):
        lookup[n] = fibonacci(n-1, lookup) + fibonacci(n-2, lookup)
    return lookup[n]


lookup = {}
N = int(input())
for _ in range(N):
    n = int(input())
    result = fibonacci(n, lookup)
    num_calls = 2 * fibonacci(n+1, lookup) - 2
    print(f'fib({n}) = {num_calls} calls = {result}')
