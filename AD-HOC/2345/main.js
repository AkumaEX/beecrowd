function difference(a, b, c, d) {
    return Math.abs(a - b - c + d);
}

let line = require('fs').readFileSync('/dev/stdin', 'utf-8').trim();
let [a, b, c, d] = line.split(' ').map(Number);
console.log(difference(a, b, c, d));
