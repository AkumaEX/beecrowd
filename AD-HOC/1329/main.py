while (n := int(input())):
    results = list(map(int, input().split()))
    john = sum(results)
    mary = n - john
    print(f'Mary won {mary} times and John won {john} times')
