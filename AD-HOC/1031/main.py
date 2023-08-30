while (n := int(input())):
    m = 1
    while (True):
        regions = list(range(1, n+1))
        selected = 0
        while (len(regions) > 1):
            region = regions.pop(selected)
            if region == 13:
                break
            selected = (selected + m-1) % len(regions)
        if regions[0] == 13:
            print(m)
            break
        m += 1
