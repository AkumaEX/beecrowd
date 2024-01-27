function isValid(a, b, c, d) {
    if (b > c && d > a && c + d > a + b && c >= 0 && d >= 0 && a % 2 === 0) {
        return true;
    }
    return false;
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let [a, b, c, d] = lines[0].split(' ').map(Number);
console.log(isValid(a, b, c, d) ? 'Valores aceitos' : 'Valores nao aceitos');
