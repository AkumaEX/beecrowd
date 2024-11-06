import 'dart:io';

bool isSmaller(int a, int b, int c, int d) {
  return a < c && b < d || a < d && b < c;
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  while (n-- > 0) {
    var [a, b, c, d] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    print(isSmaller(a, b, c, d) ? 'S' : 'N');
  }
}
