members = {
    1: 'Rolien',
    2: 'Naej',
    3: 'Elehcim',
    4: 'Odranoel'
}

n = int(input())
for _ in range(n):
    k = int(input())
    for _ in range(k):
        feedback = int(input())
        print(members[feedback])
