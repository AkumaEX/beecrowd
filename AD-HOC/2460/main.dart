import 'dart:io';

void main() {
  stdin.readLineSync();
  Set<String> queue = stdin.readLineSync()!.split(' ').toSet();
  stdin.readLineSync();
  Set<String> people = stdin.readLineSync()!.split(' ').toSet();
  print(queue.difference(people).join(' '));
}
