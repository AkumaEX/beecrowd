function gcd(x, y) {
    return y === 0 ? x : gcd(y, x % y);
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
for (let line of lines) {
    if (line) {
        let [x, y] = line.split(' ').map(Number);
        console.log(2 * (x + y) / gcd(x, y));
    }
}