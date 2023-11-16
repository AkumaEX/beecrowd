def ballons(radius, liters):
    pi = 3.1415
    volume = (4 / 3) * pi * radius**3
    return int(liters / volume)


r, l = map(float, input().split())
print(ballons(r, l))
