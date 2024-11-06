function isSmaller(a, b, c, d) {
    return a < c && b < d || a < d && b < c;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let n = parseInt(lines.shift());
for (let i = 0; i < n; i++) {
    let [a, b, c, d] = lines[i].split(' ').map(Number);
    console.log(isSmaller(a, b, c, d) ? 'S' : 'N');
}
