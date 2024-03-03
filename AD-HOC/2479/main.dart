import 'dart:io';

void main() {
  int wellBehaved = 0;
  List<String> names = [];
  int n = int.parse(stdin.readLineSync()!);
  for (int times = 0; times < n; times++) {
    var [behavior, name] = stdin.readLineSync()!.split(' ');
    if (behavior == '+') wellBehaved++;
    names.add(name);
  }
  names.sort();
  for (String name in names) print(name);
  print('Se comportaram: $wellBehaved | Nao se comportaram: ${n - wellBehaved}');
}
