def print_values(v, p):
    value = v // p
    adjustment = v % p
    for i in range(p):
        print(value + 1 if i < adjustment else value)


v = int(input())
p = int(input())
print_values(v, p)
