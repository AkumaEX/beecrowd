let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let n = parseInt(lines[0]);
let pieces = lines[1].split(' ').map(Number).reduce((a, b) => a + b, -n);
console.log(pieces);