import 'dart:io';
import 'dart:math';

List<int> getFlights(int a, int v) {
  List<int> flights = List.filled(a, 0);
  while (v-- > 0) {
    var [x, y] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    flights[x - 1]++;
    flights[y - 1]++;
  }
  return flights;
}

void formattedPrint(int test, List<int> flights) {
  int maxFlights = flights.reduce(max);
  print('Teste $test');
  for (int airport = 0; airport < flights.length; airport++) {
    if (flights[airport] == maxFlights) stdout.write('${airport + 1} ');
  }
  print('\n');
}

void main(List<String> args) {
  int test = 1;
  var [a, v] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  while (a > 0 || v > 0) {
    formattedPrint(test++, getFlights(a, v));
    [a, v] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  }
}
