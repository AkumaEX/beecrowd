let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let scores = lines[0].split(' ').map(Number).sort((a, b) => (a - b));
console.log(scores[1]);
