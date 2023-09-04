function distance(x1, y1, x2, y2) {
    return Math.sqrt(Math.pow((x1 - x2), 2) + Math.pow((y1 - y2), 2));
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
for (let line of lines) {
    if (line) {
        let [r1, x1, y1, r2, x2, y2] = line.split(' ').map(Number);
        if (distance(x1, y1, x2, y2) + r2 > r1) {
            console.log('MORTO');
        } else {
            console.log('RICO');
        }
    }
}
