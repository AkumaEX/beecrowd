let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let i = 0;
let [l, r] = lines[i++].split(' ').map(Number);
while (l || r) {
    console.log(l + r);
    [l, r] = lines[i++].split(' ').map(Number);
}
