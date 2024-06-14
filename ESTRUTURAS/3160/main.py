def new_list(l, n, x):
    if x in l:
        i = l.index(x)
        return ' '.join(l[:i] + n + l[i:])
    return ' '.join(l + n)


l = input().strip().split()
n = input().strip().split()
x = input().strip()
print(new_list(l, n, x))
