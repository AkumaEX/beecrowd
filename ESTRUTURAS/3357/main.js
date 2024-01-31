function printResults(n, l, q, participants) {
    l *= 10;
    q *= 10;
    let last = 0;
    while (l > q) {
        l -= q;
        last++;
    }
    console.log(`${participants[last % n]} ${(l / 10).toFixed(1)}`);
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
var [n, l, q] = lines[0].split(' ').map(Number);
let participants = lines[1].split(' ');
printResults(n, l, q, participants);
