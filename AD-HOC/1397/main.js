let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let i = 0;
let n;
while (n = parseInt(lines[i++])) {
    let [scoreA, scoreB] = [0, 0];
    for (let times = 0; times < n; times++) {
        let [a, b] = lines[i++].split(' ').map(Number);
        if (a > b) {
            scoreA++;
        } else if (b > a) {
            scoreB++;
        }
    }
    console.log(`${scoreA} ${scoreB}`);
}
