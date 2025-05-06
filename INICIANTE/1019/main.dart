import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  int hours = n ~/ 3600;
  n = n % 3600;
  int minutes = n ~/ 60;
  int seconds = n % 60;
  print('$hours:$minutes:$seconds');
}
