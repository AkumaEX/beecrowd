function minDistance(n, m) {
    let distance = 0;
    let parent = [...Array(n).keys()];
    let edges = _getEdges(m);
    for (let c of Object.keys(edges)) {
        for (let [u, v] of edges[c]) {
            let uRep = _find(parent, u);
            let vRep = _find(parent, v);
            if (uRep != vRep) {
                parent[uRep] = vRep;
                distance += parseInt(c);
            }
        }
    }
    return distance;
}

function _getEdges(m) {
    let edges = {};
    for (let times = 0; times < m; times++) {
        let [u, v, c] = lines[i++].split(' ').map(Number);
        if (!(c in edges)) {
            edges[c] = [];
        }
        edges[c].push([u - 1, v - 1]);
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
let [n, m] = lines[i++].split(' ').map(Number);
console.log(minDistance(n, m));