import 'dart:io';

void main() {
  while (int.parse(stdin.readLineSync()!) != 2002) {
    print('Senha Invalida');
  }
  print('Acesso Permitido');
}
