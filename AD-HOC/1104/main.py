a, b = tuple(map(int, input().split()))
while(a != 0 and b != 0):
    a_set = set(map(int, input().split()))
    b_set = set(map(int, input().split()))
    union_set = a_set.union(b_set)
    difference = min(len(union_set) - len(a_set), len(union_set) - len(b_set))
    print(difference)
    a, b = tuple(map(int, input().split()))
