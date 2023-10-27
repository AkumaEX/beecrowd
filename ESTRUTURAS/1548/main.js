function numSamePlace() {
    let m = parseInt(lines[i++]);
    let p = lines[i++].split(' ').map(Number);
    let pSorted = [... p].sort((a, b) => b - a);
    let samePlace = 0;
    for (let i = 0; i < m; i++) {
        samePlace += p[i] == pSorted[i];
    }
    return samePlace;
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
var lines = input.split('\n');
var i = 0;
let n = parseInt(lines[i++]);
for (let times = 0; times < n; times++) {
    console.log(numSamePlace());
}
