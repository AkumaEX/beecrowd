import 'dart:io';

void main() {
  String? line;
  while ((line = stdin.readLineSync()) != null) {
    var [v, t] = line!.split(' ').map(int.parse).toList();
    print(v * 2 * t);
  }
}
