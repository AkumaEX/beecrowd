function results(v) {
    v.sort((a, b) => b - a);
    let total = v.reduce((a, b) => a + b);
    if (v[0] >= total * 0.45 || v[0] > total * 0.4 && v[0] - v[1] >= total * 0.1) return 1;
    return 2;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let v = lines[1].split(' ').map(Number);
console.log(results(v));
