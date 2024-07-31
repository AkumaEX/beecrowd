let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let [max, position] = [0, 0];
for (let i = 1; i < 101; i++) {
    let value = parseInt(lines.shift());
    if (value > max) [max, position] = [value, i];
}
console.log(max);
console.log(position);
