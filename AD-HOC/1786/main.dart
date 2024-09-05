import 'dart:io';

void formattedPrint(List<int> a) {
  int b1 = (a[0] + a[1] * 2 + a[2] * 3 + a[3] * 4 + a[4] * 5 + a[5] * 6 + a[6] * 7 + a[7] * 8 + a[8] * 9) % 11 % 10;
  int b2 = (a[0] * 9 + a[1] * 8 + a[2] * 7 + a[3] * 6 + a[4] * 5 + a[5] * 4 + a[6] * 3 + a[7] * 2 + a[8]) % 11 % 10;
  print('${a[0]}${a[1]}${a[2]}.${a[3]}${a[4]}${a[5]}.${a[6]}${a[7]}${a[8]}-${b1}${b2}');
}

void main() {
  String? line;
  while ((line = stdin.readLineSync()) != null) {
    List<int> a = line!.trim().split('').map(int.parse).toList();
    formattedPrint(a);
  }
}
