from sys import stdin


def is_correct(expression):
    stack = []
    for c in expression:
        if c == '(':
            stack.append(c)
        elif c == ')':
            if not stack:
                return False
            stack.pop()
    return not stack


for expression in stdin:
    print('correct' if is_correct(expression) else 'incorrect')
