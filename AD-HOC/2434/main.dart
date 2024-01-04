import 'dart:io';

void main() {
  var [n, s] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  int min = s;
  for (int day = 0; day < n; day++) {
    s += int.parse(stdin.readLineSync()!);
    if (s < min) min = s;
  }
  print(min);
}
