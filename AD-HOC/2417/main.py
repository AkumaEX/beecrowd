def top_team(cv, ce, cs, fv, fe, fs):
    c_score = 3 * cv + ce
    f_score = 3 * fv + fe
    if c_score == f_score:
        c_score += cs
        f_score += fs
    if c_score > f_score:
        return 'C'
    if f_score > c_score:
        return 'F'
    return '='


cv, ce, cs, fv, fe, fs = tuple(map(int, input().split()))
print(top_team(cv, ce, cs, fv, fe, fs))
