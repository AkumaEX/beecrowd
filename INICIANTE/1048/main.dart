import 'dart:io';

double readjustmentRate(double salary) {
  if (salary > 2000) return 0.04;
  if (salary > 1200) return 0.07;
  if (salary > 800) return 0.10;
  if (salary > 400) return 0.12;
  return 0.15;
}

void formattedPrint(double newSalary, double moneyEarned, double percentage) {
  print('Novo salario: ${newSalary.toStringAsFixed(2)}');
  print('Reajuste ganho: ${moneyEarned.toStringAsFixed(2)}');
  print('Em percentual: ${(percentage * 100).toInt()} %');
}

void main() {
  double salary = double.parse(stdin.readLineSync()!);
  double percentage = readjustmentRate(salary);
  double moneyEarned = salary * percentage;
  double newSalary = salary + moneyEarned;
  formattedPrint(newSalary, moneyEarned, percentage);
}
