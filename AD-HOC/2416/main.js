let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let [c, n] = lines[0].split(' ').map(Number);
console.log(c % n);
