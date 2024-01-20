import 'dart:io';

void main() {
  int distance = 0;
  int n = int.parse(stdin.readLineSync()!);
  for (int times = 0; times < n; times++) {
    var [t, v] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    distance += t * v;
  }
  print(distance);
}