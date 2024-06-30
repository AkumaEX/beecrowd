in_interval = 0
n = int(input())
for _ in range(n):
    x = int(input())
    if 0 <= x <= 20:
        in_interval += 1
print(f'{in_interval} in')
print(f'{n - in_interval} out')
