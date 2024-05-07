def min_moves(s, t):
    moves = 0
    previous_equals = True
    for i in range(len(s)):
        now_equals = s[i] == t[i]
        moves += previous_equals and not now_equals
        previous_equals = now_equals
    return moves


s, t = input().split()
while s != '*':
    print(min_moves(s, t))
    s, t = input().split()
