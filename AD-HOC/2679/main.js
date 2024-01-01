let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let x = parseInt(lines[0]);
console.log(x + 2 - x % 2);
