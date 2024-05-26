import datetime


def seconds(start_day, start_hour, start_minute, start_second, end_day, end_hour, end_minute, end_second):
    start_date = datetime.datetime(2024, 4, start_day, start_hour, start_minute, start_second)
    end_date = datetime.datetime(2024, 4, end_day, end_hour, end_minute, end_second)
    return int((end_date - start_date).total_seconds())


def formatted_print(elapsed):
    days = elapsed // 86400
    elapsed %= 86400
    hours = elapsed // 3600
    elapsed %= 3600
    minutes = elapsed // 60
    seconds = elapsed % 60
    print(f'{days} dia(s)')
    print(f'{hours} hora(s)')
    print(f'{minutes} minuto(s)')
    print(f'{seconds} segundo(s)')


start_day = int(input().split()[1])
start_hour, start_minute, start_second = map(int, input().split(' : '))
end_day = int(input().split()[1])
end_hour, end_minute, end_second = map(int, input().split(' : '))
elapsed = seconds(start_day, start_hour, start_minute, start_second, end_day, end_hour, end_minute, end_second)
formatted_print(elapsed)
