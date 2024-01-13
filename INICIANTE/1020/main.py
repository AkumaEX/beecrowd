def print_formatted(days):
    years = days // 365
    days = days % 365
    months = days // 30
    days = days % 30
    print(f'{years} ano(s)')
    print(f'{months} mes(es)')
    print(f'{days} dia(s)')


days = int(input())
print_formatted(days)
