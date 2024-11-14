def same_place(n):
    lightnings = {input() for _ in range(n)}
    return len(lightnings) < n


n = int(input())
print('1' if same_place(n) else '0')
