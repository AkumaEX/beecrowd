while int(input()) > 0:
    p = map(int, input().split())
    cumulative_debt = 0
    times_to_ask = 0
    for debt in p:
        cumulative_debt += debt
        if cumulative_debt % 100 == 0:
            times_to_ask += 1
    print(times_to_ask)
