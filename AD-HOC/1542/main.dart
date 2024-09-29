import 'dart:io';

int totalPages(int q, int d, int p) {
  return (q * d * p) ~/ (p - q);
}

void formattedPrint(pages) {
  print('$pages ${pages > 1 ? 'paginas' : 'pagina'}');
}

void main() {
  List<int> quantities = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  while (quantities.length > 1) {
    int pages = totalPages(quantities[0], quantities[1], quantities[2]);
    formattedPrint(pages);
    quantities = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  }
}
