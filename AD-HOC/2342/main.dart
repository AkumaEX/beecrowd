import 'dart:io';

bool isOverflow(String p, String c, String q, int n) {
  int result = c == '+' ? int.parse(p) + int.parse(q) : int.parse(p) * int.parse(q);
  return result > n;
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  var [p, c, q] = stdin.readLineSync()!.trim().split(' ').toList();
  print(isOverflow(p, c, q, n) ? 'OVERFLOW' : 'OK');
}
