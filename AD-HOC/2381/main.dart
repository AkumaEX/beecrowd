import 'dart:io';

void main() {
  List<String> students = [];
  var [n, k] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  while (n-- > 0) students.add(stdin.readLineSync()!);
  students.sort();
  print(students[k - 1]);
}
