while n := int(input()):
    pairs = 0
    for _ in range(n):
        _, v = tuple(map(int, input().split()))
        pairs += v // 2
    rectangles = pairs // 2
    print(rectangles)