import 'dart:io';

void main() {
  int t = int.parse(stdin.readLineSync()!);
  while (t-- > 0) {
    int n = int.parse(stdin.readLineSync()!);
    print(n.isOdd ? '9' : '1');
  }
}
