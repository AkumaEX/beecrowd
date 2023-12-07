function update(desks, a, b) {
    [desks[a], desks[b]] = [desks[b], desks[a]];
}

function query(desks, employee, a) {
    if (employee == a) return 0;
    return 1 + query(desks, desks[employee], a);
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');

let i = 0;
let n = parseInt(lines[i++]);
let q = parseInt(lines[i++]);

let desks = [...Array(n).keys()];
for (let times = 0; times < q; times++) {
    let event = lines[i++].split(' ').map(Number);
    let a = event[1] - 1;
    if (event[0] == 1) {
        let b = event[2] - 1;
        update(desks, a, b);
    } else {
        console.log(query(desks, desks[a], a));
    }
}