q = int(input().split()[0])
s = set(map(int, input().split()))
for _ in range(q):
    office = int(input())
    if office in s:
        print(0)
    else:
        print(1)
        s.add(office)
