def get_products():
    products = {}
    m = int(input())
    for _ in range(m):
        product, price = input().split()
        products[product] = float(price)
    return products


def get_total(products):
    total = 0
    p = int(input())
    for _ in range(p):
        product, qty = input().split()
        total += products[product] * int(qty)
    return total


n = int(input())
for _ in range(n):
    products = get_products()
    total = get_total(products)
    print(f'R$ {total:.2f}')
