let [a, b] = require('fs').readFileSync('/dev/stdin', 'utf8').split('\n').map(Number);
let prod = a * b;
console.log(`PROD = ${prod}`);
