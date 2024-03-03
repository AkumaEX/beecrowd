well_behaved = 0
names = []
n = int(input())
for _ in range(n):
    behavior, name = input().split()
    if behavior == '+':
        well_behaved += 1
    names.append(name)
for name in sorted(names):
    print(name)
print(
    f'Se comportaram: {well_behaved} | Nao se comportaram: {n - well_behaved}')
