def most_suspicious(n, suspects):
    second = sorted(suspects)[n-2]
    return suspects.index(second) + 1


while n := int(input()):
    suspects = list(map(int, input().split()))
    print(most_suspicious(n, suspects))
