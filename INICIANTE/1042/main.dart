import 'dart:io';

void formattedPrint(List<int> sequence) {
  for (int value in sequence) print(value);
}

void main() {
  List<int> original = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  List<int> sorted = [...original]..sort((a, b) => a - b);
  formattedPrint(sorted);
  print('');
  formattedPrint(original);
}
