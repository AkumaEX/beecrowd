function minSpheres(n) {
    return n - parseInt(Math.sqrt(n));
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let c = parseInt(lines.shift());
for (let i = 0; i < c; i++) {
    let n = parseInt(lines[i]);
    console.log(minSpheres(n));
}
