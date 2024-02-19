function isOverlow(p, c, q, n) {
    let result = c == '+' ? parseInt(p) + parseInt(q) : parseInt(p) * parseInt(q);
    return result > n;
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let n = parseInt(lines[0]);
let [p, c, q] = lines[1].trim().split(' ');
console.log(isOverlow(p, c, q, n) ? 'OVERFLOW' : 'OK');
