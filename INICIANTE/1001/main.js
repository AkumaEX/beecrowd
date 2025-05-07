let [a, b] = require('fs').readFileSync('/dev/stdin', 'utf8').trim().split('\n').map(Number);
let x = a + b;
console.log(`X = ${x}`);
