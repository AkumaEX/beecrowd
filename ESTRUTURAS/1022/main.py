def addition(N1, N2, D1, D2):
    return N1 * D2 + N2 * D1, D1 * D2


def subtraction(N1, N2, D1, D2):
    return N1 * D2 - N2 * D1, D1 * D2


def multiplication(N1, N2, D1, D2):
    return N1 * N2, D1 * D2


def division(N1, N2, D1, D2):
    return N1 * D2, N2 * D1


def simplify(NL, DL):
    smaller = abs(NL) if abs(NL) < abs(DL) else abs(DL)
    for i in range(smaller, 0, -1):
        if (NL % i == 0) and (DL % i == 0):
            return NL // i, DL // i


selector = {'+': addition, '-': subtraction, '*': multiplication, '/': division}
N = int(input())
for i in range(N):
    N1, _, D1, OP, N2, _, D2 = input().split()
    NL, DL = selector.get(OP)(int(N1), int(N2), int(D1), int(D2))
    NR, DR = simplify(NL, DL)
    print('{0}/{1} = {2}/{3}'.format(NL, DL, NR, DR))
