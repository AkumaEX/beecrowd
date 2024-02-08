def total_cost(l, d, k, p):
    distance = l * k
    tolls = (l // d) * p
    return distance + tolls


l, d = map(int, input().split())
k, p = map(int, input().split())
print(total_cost(l, d, k, p))
