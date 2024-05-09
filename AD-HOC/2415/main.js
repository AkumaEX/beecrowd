function score(n, v) {
    let longest = 0;
    let sequence = 1;
    for (let i = 0; i < n-1; i++) {
        if (v[i] == v[i+1]) {
            sequence++;
            if (sequence > longest) longest = sequence;
        } else {
            sequence = 1;
        }
    }
    return longest;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let n = parseInt(lines.shift());
let v = lines.shift().split(' ').map(Number);
console.log(score(n, v));
