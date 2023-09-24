import 'dart:io';

void main() {
  String? line;
  while ((line = stdin.readLineSync()) != null) {
    int angle = int.parse(line!);
    if (angle % 6 == 0)
      print('Y');
    else
      print('N');
  }
}
