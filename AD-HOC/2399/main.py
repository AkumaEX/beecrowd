def mines_from(table, n):
    mines = []
    for i in range(n):
        mines.append(table[i])
        if i-1 >= 0:
            mines[i] += table[i-1]
        if i+1 < n:
            mines[i] += table[i+1]
    return mines


def formatted_print(mines):
    for mine in mines:
        print(mine)


n = int(input())
table = [int(input())for _ in range(n)]
mines = mines_from(table, n)
formatted_print(mines)
