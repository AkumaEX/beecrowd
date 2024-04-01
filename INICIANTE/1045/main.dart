import 'dart:io';
import 'dart:math';

void formattedPrint(double a, double b, double c) {
  if (a >= b + c) {
    print('NAO FORMA TRIANGULO');
  } else {
    if (pow(a, 2) > pow(b, 2) + pow(c, 2)) {
      print('TRIANGULO OBTUSANGULO');
    } else if (pow(a, 2) < pow(b, 2) + pow(c, 2)) {
      print('TRIANGULO ACUTANGULO');
    } else {
      print('TRIANGULO RETANGULO');
    }
    if (a == b && b == c && c == a) {
      print('TRIANGULO EQUILATERO');
    } else if (a == b || b == c || c == a) {
      print('TRIANGULO ISOSCELES');
    }
  }
}

void main() {
  List<double> sides = stdin.readLineSync()!.split(' ').map(double.parse).toList();
  var [a, b, c] = sides..sort((a, b) => b.compareTo(a));
  formattedPrint(a, b, c);
}
