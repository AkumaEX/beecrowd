while(n := int(input())):
    score_a, score_b = 0, 0
    for _ in range(n):
        a, b = tuple(map(int, input().split()))
        score_a += a > b
        score_b += b > a
    print(f'{score_a} {score_b}')
