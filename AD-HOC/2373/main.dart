import 'dart:io';

void main() {
  int total = 0;
  int n = int.parse(stdin.readLineSync()!);
  for (int tray = 0; tray < n; tray++) {
    var [l, c] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    total += l > c ? c : 0;
  }
  print(total);
}
