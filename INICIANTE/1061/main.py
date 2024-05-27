def seconds(start_d, start_h, start_m, start_s, end_d, end_h, end_m, end_s):
    return 86400 * (end_d - start_d) + 3600 * (end_h - start_h) + 60 * (end_m - start_m) + (end_s - start_s)


def formatted_print(elapsed):
    print(f'{elapsed // 86400} dia(s)')
    elapsed %= 86400
    print(f'{elapsed // 3600} hora(s)')
    elapsed %= 3600
    print(f'{elapsed // 60} minuto(s)')
    print(f'{elapsed % 60} segundo(s)')


start_d = int(input().split()[1])
start_h, start_m, start_s = map(int, input().split(' : '))
end_d = int(input().split()[1])
end_h, end_m, end_s = map(int, input().split(' : '))
elapsed = seconds(start_d, start_h, start_m, start_s, end_d, end_h, end_m, end_s)
formatted_print(elapsed)
