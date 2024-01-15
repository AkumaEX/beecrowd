function singleExchange(m, sequence) {
    let differences = 0;
    for (let i = 0; i < m; i++) {
        if (sequence[i] != 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'[i]) {
            differences++;
            if (differences > 2) {
                return false;
            }
        }
    }
    return true;
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let i = 0;
let n = parseInt(lines[i++]);
for (let times = 0; times < n; times++) {
    let m = parseInt(lines[i++]);
    let sequence = lines[i++];
    console.log(singleExchange(m, sequence) ? "There are the chance." : "There aren't the chance.");
}
