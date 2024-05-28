
function printQuotient(a, b, c, d) {
    let numerator = a * d + b * c;
    let denominator = b * d;
    let gcd = _gcd(numerator, denominator);
    console.log(`${numerator / gcd} ${denominator / gcd}`);
}

function _gcd(x, y) {
    return y === 0 ? x : _gcd(y, x % y);
}

let [a, b, c, d] = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split(' ').map(Number);
printQuotient(a, b, c, d);
