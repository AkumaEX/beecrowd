def get_total(j, scores):
    total = [0] * j
    for i, score in enumerate(scores):
        total[i % j] += score
    return total


def get_winner(total):
    max_score = max(total)
    return len(total) - total[::-1].index(max_score)


j = int(input().split()[0])
scores = list(map(int, input().split()))
total = get_total(j, scores)
print(get_winner(total))
