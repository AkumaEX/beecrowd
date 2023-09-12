let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');

let i = 0;
let k = parseInt(lines[i++]);
while (k !== 0) {
    let [n, m] = lines[i++].split(' ').map(Number);
    for (let j = 0; j < k; j++) {
        let [x, y] = lines[i++].split(' ').map(Number);
        if (x == n || y == m) {
            console.log('divisa');
        } else if (x < n) {
            if (y < m) {
                console.log('SO');
            } else {
                console.log('NO');
            }
        } else if (y < m) {
            console.log('SE');
        } else {
            console.log('NE');
        }
    }
    k = parseInt(lines[i++])
}
