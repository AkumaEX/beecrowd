function minCost(r, c) {
    let cost = 0;
    let parent = [...Array(r).keys()];
    let edges = _getEdges(c);
    for (let p of Object.keys(edges)) {
        for (let [v, w] of edges[p]) {
            let vRep = _find(parent, v);
            let wRep = _find(parent, w);
            if (vRep != wRep) {
                parent[vRep] = wRep;
                cost += parseInt(p);
            }
        }
    }
    return cost;
}

function _getEdges(c) {
    let edges = {};
    for (let times = 0; times < c; times++) {
        var [v, w, p] = lines[i++].split(' ').map(Number);
        if (!(p in edges)) {   
            edges[p] = [];
        }
        edges[p].push([v-1, w-1]);
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
var [r, c] = lines[i++].split(' ').map(Number);
console.log(minCost(r, c));
