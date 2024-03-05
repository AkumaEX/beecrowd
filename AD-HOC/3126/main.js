let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let candidates = lines[1].split(' ').map(Number);
let numAttended = candidates.reduce((total, attended) => total + attended);
console.log(numAttended);
