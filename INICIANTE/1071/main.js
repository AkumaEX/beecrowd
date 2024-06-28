function startEnd(x, y) {
    return x < y ? [x + 1, y] : [y + 1, x];
}

function evensTotal(start, end) {
    let total = 0;
    for (let num = start; num < end; num++)
        if (num % 2) total += num;
    return total;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let x = parseInt(lines.shift());
let y = parseInt(lines.shift());
let [start, end] = startEnd(x, y);
console.log(evensTotal(start, end));
