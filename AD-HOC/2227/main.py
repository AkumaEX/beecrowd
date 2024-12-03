def get_flights(a, v):
    flights = [0] * a
    for _ in range(v):
        x, y = map(int, input().split())
        flights[x-1] += 1
        flights[y-1] += 1
    return flights


def formatted_print(test, flights):
    max_flights = max(flights)
    print(f'Teste {test}')
    for airport, flights in enumerate(flights, start=1):
        if flights == max_flights:
            print(airport, end=' ')
    print()
    print()


test = 1
a, v = map(int, input().split())
while a or v:
    formatted_print(test, get_flights(a, v))
    test += 1
    a, v = map(int, input().split())
