import 'dart:io';
import 'dart:math';

bool fits(int b, int a) {
  int numDigitsB = b.toString().length;
  int lastDigitsA = a % pow(10, numDigitsB).toInt();
  return lastDigitsA == b;
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  for (int times = 0; times < n; times++) {
    var [a, b] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    if (fits(b, a))
      print('encaixa');
    else
      print('nao encaixa');
  }
}
