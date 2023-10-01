let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let i = 0;
let [a, b] = lines[i++].split(' ').map(Number);
while (a || b) {
    let c = 2 * a - b;
    console.log(c);
    [a, b] = lines[i++].split(' ').map(Number);
}
