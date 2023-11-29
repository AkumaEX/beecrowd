import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  for (int times = 0; times < n; times++) {
    var [x, y] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    int area = x * y ~/ 2;
    print('${area} cm2');
  }
}
