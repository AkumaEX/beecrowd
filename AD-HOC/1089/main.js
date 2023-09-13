let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');

let i = 0;
let n = parseInt(lines[i++]);
while (n != 0) {
    let h = lines[i++].split(' ').map(Number);
    let directions = [];
    for (let j = 0; j < n; j++) {
        let is_ascending = (h[(j + 1) % n] - h[j]) > 0;
        directions.push(is_ascending);
    }
    let peaks = 0;
    for (let j = 0; j < n; j++) {
        let direction_change = directions[(j + 1) % n] != directions[j];
        peaks += direction_change;
    }
    console.log(peaks);
    n = parseInt(lines[i++]);
}
