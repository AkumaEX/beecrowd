import 'dart:io';
import 'dart:collection';

int build(Map<int, List<int?>> tree) {
  stdin.readLineSync();
  var [root, ...nodes] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  tree[root] = [null, null];
  for (int node in nodes) tree[node] = [null, null];
  for (int node in nodes) _insert(node, tree, root);
  return root;
}

void _insert(int node, Map<int, List<int?>> tree, int parent) {
  int edge = node < parent ? 0 : 1;
  int? child = tree[parent]![edge];
  if (child == null)
    tree[parent]![edge] = node;
  else
    _insert(node, tree, child);
}

void printFormatted(int i, Map<int, List<int?>> tree, int root) {
  print('Case ${i + 1}:');
  Queue<int> queue = Queue.of([root]);
  while (true) {
    int node = queue.removeFirst();
    for (int? child in tree[node]!) if (child != null) queue.addLast(child);
    if (queue.isEmpty) return stdout.write('$node\n\n');
    stdout.write('$node ');
  }
}

void main() {
  int c = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < c; i++) {
    Map<int, List<int?>> tree = {};
    int root = build(tree);
    printFormatted(i, tree, root);
  }
}
