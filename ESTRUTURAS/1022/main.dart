import 'dart:io';

Map<String, int> addition(int n1, int d1, int n2, int d2) {
  return {'nl': n1 * d2 + n2 * d1, 'dl': d1 * d2};
}

Map<String, int> subtraction(int n1, int d1, int n2, int d2) {
  return {'nl': n1 * d2 - n2 * d1, 'dl': d1 * d2};
}

Map<String, int> multiplication(int n1, int d1, int n2, int d2) {
  return {'nl': n1 * n2, 'dl': d1 * d2};
}

Map<String, int> division(int n1, int d1, int n2, int d2) {
  return {'nl': n1 * d2, 'dl': n2 * d1};
}

Map<String, int> simplify(int nl, int dl) {
  int smaller = nl.abs() < dl.abs() ? nl.abs() : dl.abs();
  for (int i = smaller; i > 0; i--) {
    if ((nl % i == 0) && (dl % i == 0)) return {'nr': nl ~/ i, 'dr': dl ~/ i};
  }
  return {'nr': nl, 'dr': dl};
}

void main(List<String> args) {
  Map<String, Function> selector = {
    '+': addition,
    '-': subtraction,
    '*': multiplication,
    '/': division
  };
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    List<String> expression = stdin.readLineSync()!.split(' ');
    int n1 = int.parse(expression[0]);
    int d1 = int.parse(expression[2]);
    String op = expression[3];
    int n2 = int.parse(expression[4]);
    int d2 = int.parse(expression[6]);
    Map<String, int> result = selector[op]!(n1, d1, n2, d2);
    Map<String, int> simple = simplify(result['nl']!, result['dl']!);
    print('${result['nl']}/${result['dl']} = ${simple['nr']}/${simple['dr']}');
  }
}
