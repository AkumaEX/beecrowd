def get_prices(v_p, v_m, v_f, v_q, v_b):
    prices = []
    for p in v_p:
        for m in v_m:
            for f in v_f:
                for q in v_q:
                    for b in v_b:
                        prices.append(p + m + f + q + b)
    return prices


def sum_most_expensive(k, prices):
    return sum(sorted(prices, reverse=True)[0:k])


_, *v_p = map(int, input().split())
_, *v_m = map(int, input().split())
_, *v_f = map(int, input().split())
_, *v_q = map(int, input().split())
_, *v_b = map(int, input().split())
k = int(input())
prices = get_prices(v_p, v_m, v_f, v_q, v_b)
print(sum_most_expensive(k, prices))
