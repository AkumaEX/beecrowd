import 'dart:io';

List<int> withdraw(int bits) {
  List<int> bills = [0, 0, 0, 0];
  bills[0] = bits ~/ 50;
  bits %= 50;
  bills[1] = bits ~/ 10;
  bits %= 10;
  bills[2] = bits ~/ 5;
  bills[3] = bits % 5;
  return bills;
}

void printFormatted(int test, List<int> bills) {
  print('Teste $test');
  print(bills.join(' '));
  print('');
}

void main() {
  int v, test = 1;
  while ((v = int.parse(stdin.readLineSync()!)) > 0) {
    List<int> bills = withdraw(v);
    printFormatted(test, bills);
    test++;
  }
}
