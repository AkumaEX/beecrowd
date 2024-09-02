import 'dart:io';

bool isValid(String _cpf) {
  List<int> cpf = _cpf.replaceAll(RegExp(r'[.-]'), '').split('').map(int.parse).toList();
  int b1 = (cpf[0] + cpf[1] * 2 + cpf[2] * 3 + cpf[3] * 4 + cpf[4] * 5 + cpf[5] * 6 + cpf[6] * 7 + cpf[7] * 8 + cpf[8] * 9) % 11 % 10;
  int b2 = (cpf[0] * 9 + cpf[1] * 8 + cpf[2] * 7 + cpf[3] * 6 + cpf[4] * 5 + cpf[5] * 4 + cpf[6] * 3 + cpf[7] * 2 + cpf[8]) % 11 % 10;
  return b1 == cpf[9] && b2 == cpf[10];
}

void main() {
  String? cpf;
  while ((cpf = stdin.readLineSync()) != null) {
    print(isValid(cpf!) ? 'CPF valido' : 'CPF invalido');
  }
}