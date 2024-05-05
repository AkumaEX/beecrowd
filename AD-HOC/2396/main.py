def time_results(n):
    results = {}
    for car in range(1, n+1):
        time = sum(map(int, input().split()))
        results[time] = car
    return results


def print_sorted(results):
    first, second, third = sorted(results)[0:3]
    print(results[first])
    print(results[second])
    print(results[third])


n = int(input().split()[0])
print_sorted(time_results(n))
