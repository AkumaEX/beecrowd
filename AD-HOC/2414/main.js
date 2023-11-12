let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let sequence = lines[0].split(' ').map(Number);
console.log(Math.max(...sequence));