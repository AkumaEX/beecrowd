import 'dart:io';

void formattedPrint(List<int> sequence) {
  for (int num in sequence) print(num);
}

void main() {
  List<int> original = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  formattedPrint([...original]..sort((a, b) => a - b));
  print('');
  formattedPrint(original);
}
