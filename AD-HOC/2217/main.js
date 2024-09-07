let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let t = parseInt(lines.shift());
while (t--) {
    let n = parseInt(lines.shift());
    console.log(n % 2 ? '9' : '1');
}
