c = int(input())
for _ in range(c):
    expression, result = input().split('=')
    difference = abs(eval(expression.replace('x', '*')) - int(result))
    print('E' + 'r' * difference + 'ou!')
