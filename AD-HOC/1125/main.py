def get_scores(p, grand_prix, rule):
    scores = [0]*p
    for results in grand_prix:
        for driver, position in enumerate(results):
            if position < len(rule):
                scores[driver] += rule[position]
    return scores


def get_winner(scores):
    max_score = max(scores)
    return [driver+1 for driver, score in enumerate(scores) if score == max_score]


g, p = tuple(map(int, input().split()))
while (g != 0 and p != 0):
    grand_prix = [list(map(int, input().split())) for _ in range(g)]
    s = int(input())
    for _ in range(s):
        rule = list(map(int, input().split()))
        scores = get_scores(p, grand_prix, rule)
        winner = get_winner(scores)
        print(*winner)
    g, p = tuple(map(int, input().split()))
