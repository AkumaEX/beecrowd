function getStudents(q) {
    let students = [];
    while (q--) {
        let [a, s, c] = lines.shift().split(' ');
        students.push([a, s, parseInt(c)]);
    }
    return students;
}

function formattedPrint(students) {
    students.sort((a, b) => a[2] - b[2] || a[1].localeCompare(b[1]) || a[0].localeCompare(b[0]));
    for (let student of students) {
        console.log(student[0]);
    }
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
while (q = parseInt(lines.shift())) {
    let students = getStudents(q);
    formattedPrint(students);
}
