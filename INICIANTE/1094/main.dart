import 'dart:io';

void formattedPrint(Map<String, int> quantities) {
  int total = quantities['C']! + quantities['R']! + quantities['S']!;
  print('Total: ${total} cobaias');
  print('Total de coelhos: ${quantities['C']}');
  print('Total de ratos: ${quantities['R']}');
  print('Total de sapos: ${quantities['S']}');
  print('Percentual de coelhos: ${(100 * quantities['C']! / total).toStringAsFixed(2)} %');
  print('Percentual de ratos: ${(100 * quantities['R']! / total).toStringAsFixed(2)} %');
  print('Percentual de sapos: ${(100 * quantities['S']! / total).toStringAsFixed(2)} %');
}

void main() {
  Map<String, int> quantities = {'C': 0, 'R': 0, 'S': 0};
  int n = int.parse(stdin.readLineSync()!);
  while (n-- > 0) {
    var [quantity, type] = stdin.readLineSync()!.split(' ');
    quantities[type] = quantities[type]! + int.parse(quantity);
  }
  formattedPrint(quantities);
}
