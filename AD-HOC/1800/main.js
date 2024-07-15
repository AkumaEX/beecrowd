let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let q = parseInt(lines.shift().split(' ')[0]);
let s = lines.shift().split(' ').map(Number);
while (q--) {
    let office = parseInt(lines.shift());
    if (s.includes(office)) {
        console.log(0);
    } else {
        console.log(1);
        s.push(office);
    }
}
