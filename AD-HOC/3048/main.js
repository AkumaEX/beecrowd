let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let maxSequence = 1;
let v = input.trim().split('\n');
let n = parseInt(v.shift());
for (let i = 0; i < n - 1; i++) {
    maxSequence += v[i] != v[i + 1];
}
console.log(maxSequence);
