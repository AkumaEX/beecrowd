let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let n = parseInt(lines.shift());
let students = new Set();
for (let i = 0; i < n; i++)
    students.add(lines[i]);
console.log(students.size);
