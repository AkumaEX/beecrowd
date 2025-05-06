n = int(input())
hours = n // 3600
n = n % 3600
minutes = n // 60
seconds = n % 60
print(f'{hours}:{minutes}:{seconds}')
