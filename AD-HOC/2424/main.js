function ballIn(x, y) {
    return x >= 0 && x <= 432 && y >= 0 && y <= 468;
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let [x, y] = lines[0].split(' ').map(Number);
console.log(ballIn(x, y) ? 'dentro' : 'fora');