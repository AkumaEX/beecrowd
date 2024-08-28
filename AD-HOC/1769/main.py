from sys import stdin
import re


def is_valid(cpf):
    cpf = list(map(int, list(re.sub(r'[.-]|[\n]', '', cpf))))
    b1 = (cpf[0] + cpf[1] * 2 + cpf[2] * 3 + cpf[3] * 4 + cpf[4] * 5 + cpf[5] * 6 + cpf[6] * 7 + cpf[7] * 8 + cpf[8] * 9) % 11 % 10
    b2 = (cpf[0] * 9 + cpf[1] * 8 + cpf[2] * 7 + cpf[3] * 6 + cpf[4] * 5 + cpf[5] * 4 + cpf[6] * 3 + cpf[7] * 2 + cpf[8]) % 11 % 10
    return b1 == cpf[9] and b2 == cpf[10]


for cpf in stdin:
    print('CPF valido' if is_valid(cpf) else 'CPF invalido')
