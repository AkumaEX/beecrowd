def maximum_viewpoints(n, x, a):
    max = 1
    viewpoints = 1
    for i in range(n-1):
        if a[i+1] - a[i] > x:
            viewpoints = 1
        elif (viewpoints := viewpoints+1) > max:
            max = viewpoints
    return max


n, x = map(int, input().split())
a = list(map(int, input().split()))
print(maximum_viewpoints(n, x, a))
