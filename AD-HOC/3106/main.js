let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
lines.shift();
let s = lines.shift().split(' ').map(Number);
console.log(s.reduce((max, students) => max + students - students % 3, 0));
