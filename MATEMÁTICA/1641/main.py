def fits(r, w, l):
    return r**2 >= (w / 2)**2 + (l / 2)**2

pizza = 1
line = input().split()
while len(line) > 1:
    r, w, l = map(int, line)
    print(f"Pizza {pizza} {'fits on the table.' if fits(r, w, l) else 'does not fit on the table.'}")
    pizza += 1
    line = input().split()
