let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let r = parseInt(lines[0]);
console.log(Math.pow(3, r));
