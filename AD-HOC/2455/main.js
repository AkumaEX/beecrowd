function balance(p1, c1, p2, c2) {
    let left = p1 * c1;
    let right = p2 * c2;
    if (left > right) return -1;
    if (right > left) return 1;
    return 0;
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let [p1, c1, p2, c2] = lines[0].split(' ').map(Number);
console.log(balance(p1, c1, p2, c2));
