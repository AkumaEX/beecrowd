while(n := int(input())):
    h = list(map(int, input().split()))
    direction = [(h[(i+1)%n] - h[i]) > 0 for i in range(n)]
    peaks = 0
    for i in range(n):
        peaks += direction[(i+1)%n] != direction[i]
    print(peaks)