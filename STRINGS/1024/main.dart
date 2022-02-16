import 'dart:io';

List<int> _firstPass(List<int> text) {
  RegExp regex = RegExp(r'[A-Za-z]');
  return text
      .map((i) => regex.hasMatch(String.fromCharCode(i)) ? i + 3 : i)
      .toList();
}

List<int> _secondPass(List<int> text) {
  return List.from(text.reversed);
}

List<int> _thirdPass(List<int> text) {
  for (int i = text.length ~/ 2; i < text.length; i++) text[i]--;
  return text;
}

String encrypt(String text) {
  return String.fromCharCodes(
      _thirdPass(_secondPass(_firstPass([...text.codeUnits]))));
}

void main(List<String> args) {
  int N = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < N; i++) print(encrypt(stdin.readLineSync()!));
}
