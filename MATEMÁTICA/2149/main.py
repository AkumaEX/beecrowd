from sys import stdin


def phill_bonati(n, memo):
    if memo[n] == 0:
        if n < 2:
            memo[n] = n
        elif n % 2:
            memo[n] = phill_bonati(n-1, memo) * phill_bonati(n-2, memo)
        else:
            memo[n] = phill_bonati(n-1, memo) + phill_bonati(n-2, memo)
    return memo[n]


memo = [0] * 18
for n in map(int, stdin):
    print(phill_bonati(n - 1, memo))
