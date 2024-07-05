import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  while (n-- > 0) {
    int x = int.parse(stdin.readLineSync()!);
    if (x == 0)
      print('NULL');
    else {
      stdout.write(x.isOdd ? 'ODD ' : 'EVEN ');
      print(x.isNegative ? 'NEGATIVE' : 'POSITIVE');
    }
  }
}
