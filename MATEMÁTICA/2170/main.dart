import 'dart:io';

double interestRate(double x, double y) {
  return 100 * (y - x) / x;
}

void formattedPrint(int project, double rate) {
  print('Projeto ${project + 1}:');
  print('Percentual dos juros da aplicacao: ${rate.toStringAsFixed(2)} %');
  print('');
}

void main() {
  String? line;
  int project = 0;
  while ((line = stdin.readLineSync()) != null) {
    var [x, y] = line!.split(' ').map(double.parse).toList();
    double rate = interestRate(x, y);
    formattedPrint(project++, rate);
  }
}
