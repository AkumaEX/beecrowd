def get_lowest_price(b, ingredients_prices):
    lowest_price = 100 * 1000 * 1000
    for _ in range(b):
        cake_price = _get_cake_price(ingredients_prices)
        if cake_price < lowest_price:
            lowest_price = cake_price
    return lowest_price


def _get_cake_price(ingredients_prices):
    price = 0
    qi, *recipe = list(map(int, input().split()))
    for i in range(qi):
        ingredient = recipe[i * 2]
        quantity = recipe[i * 2 + 1]
        price += ingredients_prices[ingredient] * quantity
    return price


t = int(input())
for _ in range(t):
    d, _, b = tuple(map(int, input().split()))
    ingredients_prices = list(map(int, input().split()))
    lowest_price = get_lowest_price(b, ingredients_prices)
    print(d // lowest_price)
