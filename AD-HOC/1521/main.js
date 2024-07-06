function find(students, k) {
    let student = students[k - 1];
    return (student == k) ? k : find(students, student);
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
while (parseInt(lines.shift())) {
    let students = lines.shift().split(' ').map(Number);
    let k = parseInt(lines.shift());
    console.log(find(students, k));
}
