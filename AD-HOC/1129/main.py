alternatives = ['A', 'B', 'C', 'D', 'E']
while (n := int(input())):
    for _ in range(n):
        choice = [alternatives[i] for i, mean in enumerate(map(int, input().split())) if mean <= 127]
        if len(choice) == 1:
            print(choice[0])
        else:
            print('*')