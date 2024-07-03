import 'dart:io';

void formattedPrint(int c, String x, String y) {
  print('Case $c:');
  if (y == 'bin') {
    int integer = int.parse(x, radix: 2);
    print('$integer dec');
    print('${integer.toRadixString(16)} hex');
  } else if (y == 'hex') {
    int integer = int.parse(x, radix: 16);
    print('$integer dec');
    print('${integer.toRadixString(2)} bin');
  } else {
    int integer = int.parse(x);
    print('${integer.toRadixString(16)} hex');
    print('${integer.toRadixString(2)} bin');
  }
  print('');
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  for (int c = 1; c <= n; c++) {
    var [x, y] = stdin.readLineSync()!.split(' ');
    formattedPrint(c, x, y);
  }
}
