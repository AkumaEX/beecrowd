function getHayPoints(m) {
    let hayPoints = {};
    for (times = 0; times < m; times++) {
        let [description, value] = lines[i++].split(' ');
        hayPoints[description] = parseInt(value);
    }
    return hayPoints;
}

function getSalary(hayPoints) {
    let salary = 0;
    let line;
    while (!(line = lines[i++]).includes('.')) {
        for (let description of line.split(' ')) {
            salary += hayPoints[description] || 0;
        }
    }
    return salary;
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
var lines = input.split('\n');
var i = 0;
let [m, n] = lines[i++].split(' ').map(Number);
let hayPoints = getHayPoints(m);
for (let times = 0; times < n; times++) {
    console.log(getSalary(hayPoints));
}
