function noZeroSum(m, n) {
    return (m + n).toString().replace(/0/g, '');
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let i = 0;
let [m, n] = lines[i++].split(' ').map(Number);
while (m && n) {
    console.log(noZeroSum(m, n));
    [m, n] = lines[i++].split(' ').map(Number);
}