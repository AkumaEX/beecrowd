let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let line, i = 0;
while (line = lines[i++]) {
    let [a, b, c] = line.split(' ').map(Number);
    a *= 3.141592654 / 180;
    console.log(((Math.tan(a) * b + c) * 5).toFixed(2));
}
