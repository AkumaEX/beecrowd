function gcd(a, b) {
    if (b === 0) return a;
    return gcd(b, a % b);
}

function total(n, a, b) {
    return parseInt(n / a) + parseInt(n / b) - parseInt(n * gcd(a, b) / (a * b));
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
let [n, a, b] = lines.shift().split(' ').map(Number);
while (n) {
    console.log(total(n, a, b));
    [n, a, b] = lines.shift().split(' ').map(Number);
}
