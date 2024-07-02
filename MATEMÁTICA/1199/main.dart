import 'dart:io';

void main() {
  while (true) {
    String number = stdin.readLineSync()!;
    if (number.contains('x')) {
      print(int.parse(number));
    } else if (int.parse(number) > -1) {
      print('0x${int.parse(number).toRadixString(16).toUpperCase()}');
    } else {
      break;
    }
  }
}
