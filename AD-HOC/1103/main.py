h1, m1, h2, m2 = tuple(map(int, input().split()))
while(h1 != 0 or m1 != 0 or h2 != 0 or m2 != 0):
    if m2 < m1:
        h2 -= 1
        m2 += 60
    minutes = m2 - m1
    if h2 < h1:
        h2 += 24
    minutes += (h2 - h1) * 60
    print(minutes)
    h1, m1, h2, m2 = tuple(map(int, input().split()))