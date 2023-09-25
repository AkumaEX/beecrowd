import 'dart:io';

void main() {
  int n;
  while ((n = int.parse(stdin.readLineSync()!)) != 0) {
    List<int> results = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    int john = results.reduce((a, b) => a + b);
    int mary = n - john;
    print('Mary won $mary times and John won $john times');
  }
}
