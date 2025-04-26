function distance(x1, y1, x2, y2) {
    return ((x2 - x1) ** 2 + (y2 - y1) ** 2) ** 0.5;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let [x1, y1] = lines[0].split(' ').map(Number);
let [x2, y2] = lines[1].split(' ').map(Number);
console.log(`${distance(x1, y1, x2, y2).toFixed(4)}`);
