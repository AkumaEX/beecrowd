let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let n = parseInt(lines.shift());
while (n--) {
    let [a, b, c] = lines.shift().split(' ').map(Number);
    console.log(((a * 2 + b * 3 + c * 5) / 10).toFixed(1));
}
