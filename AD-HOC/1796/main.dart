import 'dart:io';

bool majorityOk(int q, List<int> v) {
  return v.reduce((value, element) => value + element) < q / 2;
}

void main() {
  int q = int.parse(stdin.readLineSync()!);
  List<int> v = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print(majorityOk(q, v) ? 'Y' : 'N');
}
