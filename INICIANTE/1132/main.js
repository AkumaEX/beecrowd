function sumBetween(x, y) {
    if (x > y) [x, y] = [y, x];
    let sum = 0;
    for (let n = x; n <= y; n++)
        if (n % 13) sum += n;
    return sum;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let x = parseInt(lines.shift());
let y = parseInt(lines.shift());
console.log(sumBetween(x, y));
