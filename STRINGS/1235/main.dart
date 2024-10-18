import 'dart:io';

String decypher(String word) {
  int length = word.length;
  int middle = length ~/ 2;
  List<String> result = List<String>.filled(length, '');
  List<String> chars = word.split('');
  for (int i = 0; i < length; i++) result[length - 1 - i] = chars[(middle + i) % length];
  return result.join('');
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  while (n-- > 0) {
    String word = stdin.readLineSync()!;
    print(decypher(word));
  }
}
