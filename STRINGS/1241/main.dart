import 'dart:io';

bool fits(String b, String a) {
  return RegExp('$b\$').hasMatch(a);
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  for (int times = 0; times < n; times++) {
    var [a, b] = stdin.readLineSync()!.trim().split(' ');
    print(fits(b, a) ? 'encaixa' : 'nao encaixa');
  }
}
