let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let i = 0;
let n = parseInt(lines[i++]);
for (let times = 0; times < n; times++) {
    let t = parseInt(lines[i++]);
    let shoot = lines[i++].split(' ').map(Number);
    let jump = lines[i++];
    let hit = 0;
    for (let j = 0; j < t; j++) {
        if (shoot[j] > 2 && jump[j] == 'J' || shoot[j] < 3 && jump[j] == 'S') {
            hit++;
        }
    }
    console.log(hit);
}
