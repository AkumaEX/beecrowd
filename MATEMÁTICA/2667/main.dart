import 'dart:io';

void main(List<String> args) {
  BigInt n = BigInt.parse(stdin.readLineSync()!);
  print(n % BigInt.from(3));
}
