function printFormatted(n) {
    let hours = parseInt(n / 3600);
    n = n % 3600;
    let minutes = parseInt(n / 60);
    let seconds = n % 60;
    console.log(`${hours}:${minutes}:${seconds}`);
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let n = parseInt(lines[0]);
printFormatted(n);
