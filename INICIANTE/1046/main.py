def elapsed(start, finish):
    if start < finish:
        return finish - start
    return finish - start + 24


start, finish = map(int, input().split())
print(f'O JOGO DUROU {elapsed(start, finish)} HORA(S)')
