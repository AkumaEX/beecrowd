n = int(input())
la, lb = tuple(map(int, input().split()))
sa, sb = tuple(map(int, input().split()))

is_possible = la <= n <= lb and sa <= n <= sb
print('possivel' if is_possible else 'impossivel')