def print_results(n, l, q, participants):
    n, l, q = [int(n), l * 10, q * 10]
    last = 0
    while l > q:
        l -= q
        last += 1
    print(f'{participants[last % n]} {l / 10:.1f}')


n, l, q = map(float, input().split())
participants = input().split()
print_results(n, l, q, participants)
