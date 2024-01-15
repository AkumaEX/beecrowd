def single_exchange(m, sequence):
    differences = 0
    for i in range(m):
        if sequence[i] != 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'[i]:
            differences += 1
            if differences > 2:
                return False
    return True


n = int(input())
for _ in range(n):
    m = int(input())
    sequence = input()
    print("There are the chance." if single_exchange(m, sequence) else "There aren't the chance.")
