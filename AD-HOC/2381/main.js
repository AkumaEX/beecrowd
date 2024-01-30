let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');

let students = [];
let [n, k] = lines[0].split(' ').map(Number);
for (let i = 1; i <= n; i++) {
    students.push(lines[i]);
}
students.sort();
console.log(students[k - 1]);
