function formattedPrint(x, y) {
    console.log(y !== 0 ? (x / y).toFixed(1) : 'divisao impossivel');
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let n = parseInt(lines.shift());
while (n--) {
    let [x, y] = lines.shift().split(' ').map(Number);
    formattedPrint(x, y);
}
