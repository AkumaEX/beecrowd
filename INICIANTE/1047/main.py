def elapsed(start_h, start_m, end_h, end_m):
    start_minutes = 60 * start_h + start_m
    end_minutes = 60 * end_h + end_m
    if (elapsed_m := end_minutes - start_minutes) < 1:
        elapsed_m += 1440
    elapsed_h = elapsed_m // 60
    elapsed_m = elapsed_m % 60
    return elapsed_h, elapsed_m


start_h, start_m, end_h, end_m = map(int, input().split())
elapsed_h, elapsed_m = elapsed(start_h, start_m, end_h, end_m)
print(f'O JOGO DUROU {elapsed_h} HORA(S) E {elapsed_m} MINUTO(S)')
