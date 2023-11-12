def get_active_time(n):
    times = list(map(int, input().split()))
    active_time = n * 10
    for i in range(0, n-1):
        difference = times[i+1] - times[i]
        if difference < 10:
            active_time -= 10 - difference
    return active_time


while n := int(input()):
    print(get_active_time(n))
