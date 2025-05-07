let [a, b, c, d] = require('fs').readFileSync('/dev/stdin', 'utf-8').split(' ').map(Number);
let accepted = b > c && d > a && c + d > a + b && c >= 0 && d >= 0 && a % 2 === 0;
console.log(accepted ? 'Valores aceitos' : 'Valores nao aceitos');
