def formatted_print(quantities):
    total = quantities['C'] + quantities['R'] + quantities['S']
    print(f"Total: {total} cobaias")
    print(f"Total de coelhos: {quantities['C']}")
    print(f"Total de ratos: {quantities['R']}")
    print(f"Total de sapos: {quantities['S']}")
    print(f"Percentual de coelhos: {100 * quantities['C'] / total:.2f} %")
    print(f"Percentual de ratos: {100 * quantities['R'] / total:.2f} %")
    print(f"Percentual de sapos: {100 * quantities['S'] / total:.2f} %")


quantities = {'C': 0, 'R': 0, 'S': 0}
n = int(input())
for _ in range(n):
    quantity, type = input().split()
    quantities[type] += int(quantity)
formatted_print(quantities)
