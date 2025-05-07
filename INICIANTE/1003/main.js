let [a, b] = require('fs').readFileSync('/dev/stdin', 'utf8').split('\n').map(Number);
let soma = a + b;
console.log(`SOMA = ${soma}`);
