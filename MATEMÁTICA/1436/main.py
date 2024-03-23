t = int(input())
for i in range(t):
    n, *ages = map(int, input().split())
    print(f'Case {i+1}: {ages[n//2]}')
