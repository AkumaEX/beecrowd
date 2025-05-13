import 'dart:io';

void main() {
  var [n1, n2, n3, n4] = stdin.readLineSync()!.split(' ').map(double.parse).toList();
  double finalGrade = (n1 * 2 + n2 * 3 + n3 * 4 + n4) / 10;
  print('Media: ${finalGrade.toStringAsFixed(1)}');
  if (finalGrade < 5.0)
    print('Aluno reprovado.');
  else if (finalGrade > 7.0)
    print('Aluno aprovado.');
  else {
    print('Aluno em exame.');
    double retakeGrade = double.parse(stdin.readLineSync()!);
    print('Nota do exame: ${retakeGrade}');
    finalGrade = (finalGrade + retakeGrade) / 2;
    print(finalGrade < 5.0 ? 'Aluno reprovado.' : 'Aluno aprovado.');
    print('Media final: ${finalGrade.toStringAsFixed(1)}');
  }
}
