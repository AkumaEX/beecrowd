def is_multiple(a, b):
    if (a % b == 0 or b % a == 0):
        return True
    return False


a, b = map(int, input().split())
print('Sao Multiplos' if is_multiple(a, b) else 'Nao sao Multiplos')
