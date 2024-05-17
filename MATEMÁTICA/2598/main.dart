import 'dart:io';

int numRadars(int n, int m) {
  return (n / m).ceil();
}

void main() {
  int c = int.parse(stdin.readLineSync()!);
  while (c-- > 0) {
    var [n, m] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    print(numRadars(n, m));
  }
}
