import 'dart:io';

void main() {
  List<String> students = [];
  var [n, k] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  for (int _ = 0; _ < n; _++) students.add(stdin.readLineSync()!);
  students.sort();
  print(students[k - 1]);
}
