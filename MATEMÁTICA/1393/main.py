def fibonacci(n, memo):
    if memo[n]:
        return memo[n]
    memo[n] = n if n < 2 else fibonacci(n-1, memo) + fibonacci(n-2, memo)
    return memo[n]


memo = [0] * 42
while n := int(input()):
    print(fibonacci(n + 1, memo))
