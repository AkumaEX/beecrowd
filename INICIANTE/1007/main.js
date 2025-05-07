let [a, b, c, d] = require('fs').readFileSync('/dev/stdin', 'utf8').split('\n').map(Number);
console.log(`DIFERENCA = ${a * b - c * d}`);
