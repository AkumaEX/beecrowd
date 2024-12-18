import 'dart:io';

void main() {
  int gasoline = 0;
  int ethanol = 0;
  int diesel = 0;

  while (true) {
    int fuel = int.parse(stdin.readLineSync()!);
    if (fuel == 1)
      ethanol++;
    else if (fuel == 2)
      gasoline++;
    else if (fuel == 3)
      diesel++;
    else if (fuel == 4) break;
  }

  print('MUITO OBRIGADO');
  print('Alcool: $ethanol');
  print('Gasolina: $gasoline');
  print('Diesel: $diesel');
}
