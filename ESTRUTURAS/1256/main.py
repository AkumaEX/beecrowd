def get_hash_table(m):
    hash_table = [[] for _ in range(m)]
    keys = list(map(int, input().split()))
    for key in keys:
        hash_table[key % m].append(key)
    return hash_table


def print_formatted(hash_table):
    for i, keys in enumerate(hash_table):
        print(f'{i} -> ', end='')
        for key in keys:
            print(f'{key} -> ', end='')
        print('\\')


n = int(input())
for i in range(n):
    m, c = tuple(map(int, input().split()))
    hash_table = get_hash_table(m)
    print_formatted(hash_table)
    if i < n-1:
        print()
