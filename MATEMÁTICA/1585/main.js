let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let i = 0;
let n = lines[i++];
for (let times = 0; times < n; times++) {
    let [x, y] = lines[i++].split(' ').map(Number);
    let area = parseInt(x * y / 2);
    console.log(`${area} cm2`);
}