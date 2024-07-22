function nLines(n) {
    return parseInt((-1 + Math.sqrt(1 + 8 * n)) / 2);
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let t = parseInt(lines.shift());
while (t--) {
    let n = parseInt(lines.shift());
    console.log(nLines(n));
}
