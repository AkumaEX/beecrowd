let [number, hours, wage] = require('fs').readFileSync('/dev/stdin', 'utf8').trim().split('\n').map(Number);
console.log(`NUMBER = ${number}`);
console.log(`SALARY = U$ ${(hours * wage).toFixed(2)}`);
