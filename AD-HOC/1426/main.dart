import 'dart:io';

List<List<int>> fillInitialValues() {
  List<List<int>> matrix = [];
  for (int lines = 1; lines <= 6; lines++) matrix.add(List.filled(lines, 0));
  matrix.add(stdin.readLineSync()!.replaceAll(' ', ' 0 ').split(' ').map(int.parse).toList());
  matrix.add(List.filled(8, 0));
  matrix.add(stdin.readLineSync()!.replaceAll(' ', ' 0 ').split(' ').map(int.parse).toList());
  return matrix;
}

List<List<int>> solveBaseValues(List<List<int>> matrix) {
  // i is the index of the four base triangles
  for (int i in [0, 2, 4, 6]) {
    matrix[8][i + 1] = (matrix[6][i] - matrix[8][i] - matrix[8][i + 2]) ~/ 2;
  }
  return matrix;
}

List<List<int>> fillAllValues(List<List<int>> matrix) {
  // from line 7 to the top
  for (int line = 7; line >= 0; line--) {
    for (int i = 0; i <= line; i++) {
      matrix[line][i] = matrix[line + 1][i] + matrix[line + 1][i + 1];
    }
  }
  return matrix;
}

void printPyramid(List<List<int>> matrix) {
  for (List<int> line in matrix) {
    print(line.join(' '));
  }
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  for (int times = 0; times < n; times++) {
    // top half values of the pyramid aren't necessary
    stdin.readLineSync()!;
    stdin.readLineSync()!;
    stdin.readLineSync()!;
    printPyramid(fillAllValues(solveBaseValues(fillInitialValues())));
  }
}
