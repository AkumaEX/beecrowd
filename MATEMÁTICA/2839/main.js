let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let n = parseInt(lines[0]);
console.log(n + 1);
