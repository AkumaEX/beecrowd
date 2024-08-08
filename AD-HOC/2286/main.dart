import 'dart:io';

void main() {
  for (int test = 1, n = int.parse(stdin.readLineSync()!); n > 0; test++, n = int.parse(stdin.readLineSync()!)) {
    print('Teste $test');
    var [p1, p2] = [stdin.readLineSync()!, stdin.readLineSync()!];
    while (n-- > 0) {
      var [h1, h2] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
      print((h1 + h2).isEven ? p1 : p2);
    }
    print('');
  }
}
