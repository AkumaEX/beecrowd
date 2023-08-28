import 'dart:io';

int maior(int a, int b) {
  return (a + b + (a - b).abs()) ~/ 2;
}

void main() {
  List<String> data = stdin.readLineSync()!.split(' ');
  int a = int.parse(data[0]);
  int b = int.parse(data[1]);
  int c = int.parse(data[2]);
  int greatest = maior(maior(a, b), c);
  print('${greatest} eh o maior');
}
