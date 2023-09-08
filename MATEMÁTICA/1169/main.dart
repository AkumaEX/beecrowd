import 'dart:io';

BigInt get_weight(int x) {
  BigInt grains = BigInt.one;
  for (int i = 0; i < x; i++) grains *= BigInt.two;
  return grains ~/ BigInt.from(12000);
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n; i++) {
    int x = int.parse(stdin.readLineSync()!);
    BigInt weight = get_weight(x);
    print('$weight kg');
  }
}
