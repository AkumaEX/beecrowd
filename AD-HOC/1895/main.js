let [i, a, b] = [0, 0, 0];
let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let [n, t, l] = lines.shift().split(' ').map(Number);
while (i < n) {
    let s = parseInt(lines[i++]);
    if (Math.abs(t - s) <= l) {
        a += Math.abs(t - s);
        t = s;
    }
    s = parseInt(lines[i++]);
    if (Math.abs(t - s) <= l) {
        b += Math.abs(t - s);
        t = s;
    }
}
console.log(`${a} ${b}`);
