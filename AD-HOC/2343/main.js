function samePlace(n) {
    let lightnings = new Set();
    for (let i = 0; i < n; i++) lightnings.add(lines[i]);
    return lightnings.size < n;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let n = parseInt(lines.shift());
console.log(samePlace(n) ? '1' : '0');
