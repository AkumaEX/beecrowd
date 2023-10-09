let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
for (let line of lines) {
    if (line) {
        let [a, b, c] = line.split(' ').map(Number);
        if (a != b && b == c) {
            console.log('A');
        } else if (b != a && a == c) {
            console.log('B');
        } else if (c != a && a == b) {
            console.log('C');
        } else {
            console.log('*');
        }
    }
}
