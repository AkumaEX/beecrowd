function minDistance(m, n) {
    let distance = 0;
    let parent = [...Array(m).keys()];
    let edges = _getEdges(n);
    for (let z of Object.keys(edges)) {
        for (let [x, y] of edges[z]) {
            let xRep = _find(parent, x);
            let yRep = _find(parent, y);
            if (xRep != yRep) {
                parent[xRep] = yRep;
                distance += parseInt(z);
            }
        }
    }
    return distance;
}

function _getEdges(n) {
    let edges = {};
    for (let times = 0; times < n; times++) {
        let [x, y, z] = lines[i++].split(' ').map(Number);
        if (z in edges) {
            edges[z].push([x, y]);
        } else {
            edges[z] = [[x, y]];
        }
    }
    return edges;
}

function _find(parent, i) {
    if (parent[i] != i) {
        parent[i] = _find(parent, parent[i]);
    }
    return parent[i];
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
var lines = input.split('\n');
var i = 0;
var [m, n] = lines[i++].split(' ').map(Number);
while (m && n) {
    console.log(minDistance(m, n));
    [m, n] = lines[i++].split(' ').map(Number);
}
