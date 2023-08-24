import 'dart:io';

void main() {
  String? line = stdin.readLineSync();
  while (line != null) {
    List<int> n = line.split(' ').map(int.parse).toList();
    print('${n[0] ^ n[1]}');
    line = stdin.readLineSync();
  }
}
