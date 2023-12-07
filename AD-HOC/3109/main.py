def update(desks, a, b):
    desks[a], desks[b] = desks[b], desks[a]


def query(desks, employee, a):
    if employee == a:
        return 0
    return 1 + query(desks, desks[employee], a)


n = int(input())
q = int(input())

desks = list(range(0, n))
for _ in range(q):
    event = list(map(int, input().split()))
    a = event[1]-1
    if event[0] == 1:
        b = event[2]-1
        update(desks, a, b)
    else:
        print(query(desks, desks[a], a))
