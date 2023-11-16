let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');

let t = parseInt(lines[0]);
console.log(t * 4);
