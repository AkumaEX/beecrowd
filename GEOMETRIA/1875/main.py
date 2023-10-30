def get_scores(p):
    points = {
        'R': {'B': 1, 'G': 2},
        'G': {'R': 1, 'B': 2},
        'B': {'G': 1, 'R': 2}
    }
    scores = {
        'R': 0,
        'G': 0,
        'B': 0
    }
    for _ in range(p):
        m, s = input().split()
        scores[m] += points[m][s]
    return scores


def get_winner(scores):
    if scores['R'] > scores['G'] and scores['R'] > scores['B']:
        return 'red'
    elif scores['G'] > scores['R'] and scores['G'] > scores['B']:
        return 'green'
    elif scores['B'] > scores['R'] and scores['B'] > scores['G']:
        return 'blue'
    elif scores['R'] == scores['G'] == scores['B']:
        return 'trempate'
    return 'empate'


c = int(input())
for _ in range(c):
    p = int(input())
    scores = get_scores(p)
    print(get_winner(scores))
