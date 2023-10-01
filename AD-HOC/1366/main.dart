import 'dart:io';

void main() {
  int n;
  while ((n = int.parse(stdin.readLineSync()!)) != 0) {
    int pairs = 0;
    for (int i = 0; i < n; i++) {
      var [_, v] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
      pairs += v ~/ 2;
    }
    int rectangles = pairs ~/ 2;
    print(rectangles);
  }
}
