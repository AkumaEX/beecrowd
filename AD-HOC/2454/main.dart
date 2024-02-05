import 'dart:io';

void main() {
  var [p, r] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  if (p == 0)
    print('C');
  else if (r == 0)
    print('B');
  else
    print('A');
}
