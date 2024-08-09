import 'dart:io';

void main() {
  for (int test = 1, r = int.parse(stdin.readLineSync()!); r > 0; test++, r = int.parse(stdin.readLineSync()!)) {
    print('Teste $test');
    var [totalA, totalB] = [0, 0];
    while (r-- > 0) {
      var [a, b] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
      totalA += a;
      totalB += b;
    }
    print(totalA > totalB ? 'Aldo\n' : 'Beto\n');
  }
}
