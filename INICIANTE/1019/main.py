def print_formatted(n):
    hours = n // 3600
    n = n % 3600
    minutes = n // 60
    seconds = n % 60
    print(f'{hours}:{minutes}:{seconds}')


n = int(input())
print_formatted(n)
