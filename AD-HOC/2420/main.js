function section(n, a) {
    let target = a.reduce((acc, value) => acc + value) / 2;
    let k = 0;
    for (let size = 0; size < target; size += a[k++]);
    return k;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let n = parseInt(lines.shift());
let a = lines.shift().split(' ').map(Number);
console.log(section(n, a));
