function fits(n, a, l, p) {
    return n <= a && n <= l && n <= p;
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let n = parseInt(lines[0]);
let [a, l, p] = lines[1].split(' ').map(Number);
console.log(fits(n, a, l, p) ? 'S' : 'N');
