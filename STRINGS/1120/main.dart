import 'dart:io';

void main() {
  var [D, K] = stdin.readLineSync()!.split(' ');
  while (D != '0' && K != '0') {
    print(BigInt.tryParse(K.replaceAll(D, '')) ?? BigInt.zero);
    [D, K] = stdin.readLineSync()!.split(' ');
  }
}
