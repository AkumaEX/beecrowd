import 'dart:io';

void main() {
  double n = double.parse(stdin.readLineSync()!) + 0.0001;
  print('NOTAS:');
  for (int bill in [100, 50, 20, 10, 5, 2]) {
    print('${n ~/ bill} nota(s) de R\$ ${bill.toStringAsFixed(2)}');
    n %= bill;
  }
  print('MOEDAS:');
  for (double coin in [1, 0.50, 0.25, 0.10, 0.05, 0.01]) {
    print('${n ~/ coin} moeda(s) de R\$ ${coin.toStringAsFixed(2)}');
    n %= coin;
  }
}
