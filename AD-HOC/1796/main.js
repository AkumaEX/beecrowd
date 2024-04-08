function majorityOk(q, v) {
    return v.reduce((value, element) => value + element) < q / 2;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let q = parseInt(lines.shift());
let v = lines.shift().split(' ').map(Number);
console.log(majorityOk(q, v) ? 'Y' : 'N');
