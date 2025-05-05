import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  print(n);
  for (int bill in [100, 50, 20, 10, 5, 2, 1]) {
    print("${n ~/ bill} nota(s) de R\$ $bill,00");
    n %= bill;
  }
}
