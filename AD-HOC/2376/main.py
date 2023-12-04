def world_champion():
    teams = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P']
    for knockout in [8, 4, 2, 1]:
        teams = _results(teams, knockout)
    return teams[0]


def _results(teams, knockout):
    for team_m in range(knockout):
        team_n = team_m + 1
        m, n = tuple(map(int, input().split()))
        del teams[team_n if m > n else team_m]
    return teams


print(world_champion())
