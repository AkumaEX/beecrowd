import 'dart:io';

int digitSumOf(String m) {
  return m.split('').map(int.parse).reduce((value, element) => value + element);
}

void main() {
  String? line;
  while ((line = stdin.readLineSync()) != null) {
    String m = line!.split(' ')[1];
    int digitSum = digitSumOf(m);
    print('$digitSum ${digitSum % 3 == 0 ? 'sim' : 'nao'}');
  }
}
