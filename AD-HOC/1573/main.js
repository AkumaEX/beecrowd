function getEdgeSize(a, b, c) {
    let edgeSize = Math.pow(a * b * c, 1 / 3);
    return parseInt(edgeSize);
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let i = 0;
let [a, b, c] = lines[i++].split(' ').map(Number);
while (a > 0 && b > 0 && c > 0) {
    console.log(getEdgeSize(a, b, c));
    [a, b, c] = lines[i++].split(' ').map(Number);
}
