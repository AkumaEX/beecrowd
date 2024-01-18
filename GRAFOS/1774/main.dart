import 'dart:collection';
import 'dart:io';

int minCost(int r, int c) {
  int cost = 0;
  List<int> parent = List.generate(r, (i) => i);
  SplayTreeMap<int, List<List<int>>> edges = _getEdges(c);
  for (int p in edges.keys) {
    for (var [u, w] in edges[p]!) {
      int uRep = _find(parent, u);
      int wRep = _find(parent, w);
      if (uRep != wRep) {
        parent[uRep] = wRep;
        cost += p;
      }
    }
  }
  return cost;
}

SplayTreeMap<int, List<List<int>>> _getEdges(int c) {
  SplayTreeMap<int, List<List<int>>> edges = SplayTreeMap<int, List<List<int>>>();
  for (int times = 0; times < c; times++) {
    var [v, w, p] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    if (!edges.containsKey(p)) edges[p] = <List<int>>[];
    edges[p]!.add([v - 1, w - 1]);
  }
  return edges;
}

int _find(List<int> parent, int i) {
  if (parent[i] != i) parent[i] = _find(parent, parent[i]);
  return parent[i];
}

void main() {
  var [r, c] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print(minCost(r, c));
}
