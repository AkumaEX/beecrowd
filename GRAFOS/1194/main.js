function getNodes(s1) {
    let graph = {};
    for (let data of s1) {
        graph[data] = [];
    }
    return graph;
}

function addEdges(nodes, leaves, graph) {
    let leaf = leaves.next().value;
    let parent = nodes.next().value;
    let path = [parent];
    for (let child of nodes) {
        graph[parent].push(child);
        path.push(child);
        [parent, leaf] = _backtrackIfLeaf(child, leaf, path, leaves);
    }
    return path[0];
}

function _backtrackIfLeaf(node, leaf, path, leaves) {
    if (node === leaf) {
        for (leaf of leaves) {
            if (! path.includes(leaf)) {
                break;
            }
            node = leaf;
        }
    }
    return [node, leaf];
}

function postOrder(parent, graph) {
    let children = '';
    for (let child of graph[parent]) {
        children += postOrder(child, graph);
    }
    return children + parent;
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let c = parseInt(lines[0]);
for (let i = 1; i <= c; i++) {
    let [n, s1, s2] = lines[i].split(' ');
    graph = getNodes(s1);
    treeRoot = addEdges(s1[Symbol.iterator](), s2[Symbol.iterator](), graph);
    console.log(postOrder(treeRoot, graph));
}
