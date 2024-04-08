def majority_ok(q, v):
    return sum(v) < q / 2


q = int(input())
v = map(int, input().split())
print('Y' if majority_ok(q, v) else 'N')
