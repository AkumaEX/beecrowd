function no_absence(n, d, attendance_list) {
    for (let alumni = 0; alumni < n; alumni++) {
        let absence = false;
        for (let dinner = 0; dinner < d; dinner++) {
            if (attendance_list[dinner][alumni] === 0) {
                absence = true;
                break;
            }
        }
        if (! absence) {
            return true;
        }
    }
    return false;
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let i = 0;
let [n, d] = lines[i++].split(' ').map(Number);
while (n || d) {
    let attendance_list = Array();
    for (let dinner = 0; dinner < d; dinner++) {
        attendance_list.push(lines[i++].split(' ').map(Number));
    }
    if (no_absence(n, d, attendance_list)) {
        console.log('yes');
    } else {
        console.log('no');
    }
    [n, d] = lines[i++].split(' ').map(Number);
}
