def print_sorted(issues):
    for issue in sorted(issues, key=lambda issue: [issue[1], issue[0]], reverse=True):
        print(issue)


issues = []
n = int(input().split()[0])
for _ in range(n):
    issues += input().split()
print_sorted(issues)
