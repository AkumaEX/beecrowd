import 'dart:io';

void main() {
  int total = 0, n = 0;
  for (List<String> s = stdin.readLineSync()!.split(''); s.length > 0; n++) {
    int digit = int.parse(s.removeLast());
    total += digit;
    if (digit == 0) {
      s.removeLast();
      total += 10;
    }
  }
  print((total / n).toStringAsFixed(2));
}
