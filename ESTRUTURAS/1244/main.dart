import 'dart:io';

List<String> strings() {
  return stdin.readLineSync()!.split(' ')..sort((a, b) => b.length - a.length);
}

void main(List<String> args) {
  int n = int.parse(stdin.readLineSync()!);
  while (n-- > 0) print(strings().join(' '));
}
