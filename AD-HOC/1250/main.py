n = int(input())
for _ in range(n):
    t = int(input())
    shoot = list(map(int, input().split()))
    jump = input()
    hit = 0
    for i in range(t):
        hit += shoot[i] > 2 and jump[i] == 'J' or shoot[i] < 3 and jump[i] == 'S'
    print(hit)
