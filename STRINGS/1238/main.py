n = int(input())
for _ in range(n):
    result = []
    str_i, str_j = input().split()
    len_i, len_j = len(str_i), len(str_j)
    i, j = 0, 0
    while(i < len_i or j < len_j):
        if i < len_i:
            result.append(str_i[i])
            i += 1
        if j < len_j:
            result.append(str_j[j])
            j += 1
    print(''.join(result))
