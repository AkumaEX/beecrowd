def elapsed(from_day, from_month, to_day, to_month):
    days = {1: 31, 2: 28, 3: 31, 4: 30, 5: 31, 6: 30,
            7: 31, 8: 31, 9: 30, 10: 31, 11: 30, 12: 31}
    total = to_day - from_day
    for month in range(from_month, to_month):
        total += days[month]
    return total


from_day, from_month = map(int, input().split())
to_day, to_month = map(int, input().split())
print(elapsed(from_day, from_month, to_day, to_month))
