function h(a, d, r) {
    let x = (90 - r) * Math.PI / 180;
    return a - Math.tan(x) * d;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
for (let line of lines) {
    let [a, d, r] = line.split(' ').map(Number);
    console.log(h(a, d, r).toFixed(4));
}
