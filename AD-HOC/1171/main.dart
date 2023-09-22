import 'dart:io';

void main() {
  Map<int, int> count = {};
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n; i++) {
    int num = int.parse(stdin.readLineSync()!);
    if (count.containsKey(num))
      count[num] = count[num]! + 1;
    else
      count[num] = 1;
  }
  for (int num in count.keys.toList()..sort()) 
    print('$num aparece ${count[num]} vez(es)');
}
