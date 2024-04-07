function fits(r, w, l) {
    return Math.pow(r, 2) >= Math.pow(w / 2, 2) + Math.pow(l / 2, 2);
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
let line = lines.shift().split(' ');
for (let pizza = 1; line.length > 1; pizza++) {
    let [r, w, l] = line.map(Number);
    console.log(`Pizza ${pizza} ${fits(r, w, l) ? 'fits on the table.' : 'does not fit on the table.'}`);
    line = lines.shift().split(' ');
}
