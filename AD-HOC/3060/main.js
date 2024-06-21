function printValues(v, p) {
    let value = parseInt(v / p);
    let adjustment = v % p;
    for (let i = 0; i < p; i++)
        console.log(i < adjustment ? value + 1 : value);
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let v = parseInt(lines.shift());
let p = parseInt(lines.shift());
printValues(v, p);
