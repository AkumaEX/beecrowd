function numRadars(n, m) {
    return Math.ceil(n / m);
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let c = parseInt(lines.shift());
while (c--) {
    let [n, m] = lines.shift().split(' ').map(Number);
    console.log(numRadars(n, m));
}
