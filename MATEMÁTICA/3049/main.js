function biggerSize(b, t) {
    let size = b + t;
    if (size > 160) return 1;
    if (size < 160) return 2;
    return 0;
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let b = parseInt(lines[0]);
let t = parseInt(lines[1]);
console.log(biggerSize(b, t));
