import 'dart:io';

void printTree(int n) {
  int whitespaces = n ~/ 2;
  int treesize = 1;
  while (treesize <= n) {
    print(' ' * whitespaces + '*' * treesize);
    whitespaces--;
    treesize += 2;
  }
  whitespaces = n ~/ 2;
  print(' ' * whitespaces + '*');
  print(' ' * --whitespaces + '***');
  print('');
}

void main() {
  String? line;
  while ((line = stdin.readLineSync()) != null) {
    int n = int.parse(line!);
    printTree(n);
  }
}
