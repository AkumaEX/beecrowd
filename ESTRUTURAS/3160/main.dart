import 'dart:io';

String newList(List<String> l, List<String> n, String x) {
  if (l.contains(x)) {
    int i = l.indexOf(x);
    l.insertAll(i, n);
    return l.join(' ');
  }
  return (l + n).join(' ');
}

void main() {
  List<String> l = stdin.readLineSync()!.trim().split(' ');
  List<String> n = stdin.readLineSync()!.trim().split(' ');
  String x = stdin.readLineSync()!.trim();
  print(newList(l, n, x));
}
