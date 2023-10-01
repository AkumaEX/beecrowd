let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let i = 0;
let n;
while ((n = parseInt(lines[i++])) !== 0) {
    let pairs = 0;
    for (let times = 0; times < n; times++) {
        let [_, v] = lines[i++].split(' ').map(Number);
        pairs += Math.floor(v / 2);
    }
    let rectangles = Math.floor(pairs / 2);
    console.log(rectangles);
}
