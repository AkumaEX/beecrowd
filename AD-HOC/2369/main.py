def get_water_bill(consumption):
    if consumption <= 10:
        return 7
    if consumption <= 30:
        return 7 + (consumption - 10)
    if consumption <= 100:
        return 7 + 20 + (consumption - 30) * 2
    return 7 + 20 + 140 + (consumption - 100) * 5


n = int(input())
print(get_water_bill(n))
