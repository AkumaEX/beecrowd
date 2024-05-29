import 'dart:io';

void main() {
  var [v, t] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  List<int> a = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  for (int i = 0; i < t; i++) {
    v += a[i];
    if (v < 0)
      v = 0;
    else if (v > 100) v = 100;
  }
  print(v);
}
