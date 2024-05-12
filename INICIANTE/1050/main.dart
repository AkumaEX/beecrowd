import 'dart:io';

String city(int ddd) {
  Map<int, String> cities = {61: 'Brasilia', 71: 'Salvador', 11: 'Sao Paulo', 21: 'Rio de Janeiro', 32: 'Juiz de Fora', 19: 'Campinas', 27: 'Vitoria', 31: 'Belo Horizonte'};
  return cities[ddd] ?? 'DDD nao cadastrado';
}

void main() {
  int ddd = int.parse(stdin.readLineSync()!);
  print(city(ddd));
}
