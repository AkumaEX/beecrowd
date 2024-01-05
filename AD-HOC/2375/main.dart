import 'dart:io';

bool fits(int n, int a, int l, int p) {
  return n <= a && n <= l && n <= p;
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  var [a, l, p] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print(fits(n, a, l, p) ? 'S' : 'N');
}
