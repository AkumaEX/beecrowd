import 'dart:io';

int eval(String expression) {
  var [a, operator, b] = expression.trim().split(' ').toList();
  if (operator == '+') return int.parse(a) + int.parse(b);
  if (operator == '-') return int.parse(a) - int.parse(b);
  return int.parse(a) * int.parse(b);
}

void main() {
  int c = int.parse(stdin.readLineSync()!);
  for (int times = 0; times < c; times++) {
    var [expression, result] = stdin.readLineSync()!.split('=').toList();
    int difference = (eval(expression) - int.parse(result)).abs();
    print('E' + 'r' * difference + 'ou!');
  }
}
