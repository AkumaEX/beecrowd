import 'dart:io';

void main() {
  double value = double.parse(stdin.readLineSync()!);
  if (value < 0 || value > 100)
    print('Fora de intervalo');
  else if (value > 75)
    print('Intervalo (75,100]');
  else if (value > 50)
    print('Intervalo (50,75]');
  else if (value > 25)
    print('Intervalo (25,50]');
  else
    print('Intervalo [0,25]');
}
