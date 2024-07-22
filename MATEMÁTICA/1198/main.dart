import 'dart:io';

void main() {
  String? line;
  while ((line = stdin.readLineSync()) != null) {
    var [hashmat, opponent] = line!.split(' ').map(int.parse).toList();
    print(hashmat > opponent ? hashmat - opponent : opponent - hashmat);
  }
}
