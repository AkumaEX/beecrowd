import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  Set<String> students = Set<String>();
  while (n-- > 0) students.add(stdin.readLineSync()!);
  print(students.length);
}
