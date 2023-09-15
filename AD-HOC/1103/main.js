let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');

for (let line of lines) {
    let [h1, m1, h2, m2] = line.split(' ').map(Number);
    if (h1 == 0 && m1 == 0 && h2 == 0 && m2 == 0) {
        break;
    }
    if (m2 < m1) {
        h2 -= 1;
        m2 += 60;
    }
    let minutes = m2 - m1;
    if (h2 < h1) {
        h2 += 24;
    }
    minutes += (h2 - h1) * 60;
    console.log(minutes);
}
