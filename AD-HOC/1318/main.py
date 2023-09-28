n, m = tuple(map(int, input().split()))
while (n or m):
    tickets = list(map(int, input().split()))
    clones = {}
    for ticket in tickets:
        clones[ticket] = 1 if ticket in clones else 0
    print(sum(clones.values()))
    n, m = tuple(map(int, input().split()))
