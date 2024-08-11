import 'dart:io';

int missing(int n, List<int> pieces) {
  for (int i = 0; i < n - 1; i++) {
    if (pieces[i] != i + 1) return i + 1;
  }
  return n;
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<int> pieces = stdin.readLineSync()!.split(' ').map(int.parse).toList()..sort((a, b) => a - b);
  print(missing(n, pieces));
}
