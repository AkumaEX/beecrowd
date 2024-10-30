import 'dart:io';

String transform(String number) {
  while (number.length > 1) {
    number = number.split('').map(int.parse).reduce((a, b) => a + b).toString();
  }
  return number;
}

int compare(String m, String n) {
  if (int.parse(m) > int.parse(n)) return 1;
  if (int.parse(m) < int.parse(n)) return 2;
  return 0;
}

void main() {
  var [m, n] = stdin.readLineSync()!.split(' ');
  while (m != '0' || n != '0') {
    print(compare(transform(m), transform(n)));
    [m, n] = stdin.readLineSync()!.split(' ');
  }
}
