let lines = require('fs').readFileSync('/dev/stdin', 'utf8').split('\n');
let salary = Number.parseFloat(lines[1]);
let sales = Number.parseFloat(lines[2]);
console.log(`TOTAL = R$ ${(salary + sales * 0.15).toFixed(2)}`);
