from sys import stdin


def print_tree(n):
    whitespaces = n // 2
    treesize = 1
    while treesize <= n:
        print(' ' * whitespaces + '*' * treesize)
        whitespaces -= 1
        treesize += 2
    whitespaces = n // 2
    print(' ' * whitespaces + '*')
    print(' ' * (whitespaces - 1) + '***')
    print()


for line in stdin:
    n = int(line)
    print_tree(n)
