import 'dart:io';

void main(List<String> args) {
  stdin.readLineSync();
  Iterable<int> s = stdin.readLineSync()!.trim().split(' ').map(int.parse);
  print(s.fold<int>(0, (max, students) => max + students - students % 3));
}
