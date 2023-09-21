def depth(A, M, blocks)

T = int(input())
for _ in range(T):
    blocks = 0
    N, M = tuple(map(int, input().split()))
    A = list(map(int, input().split()))
    
    print(blocks)
