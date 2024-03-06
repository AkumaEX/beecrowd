function mostSuspicious(n, suspects) {
    let second = [...suspects].sort((a, b) => a - b)[n - 2];
    return suspects.indexOf(second) + 1;
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.trim().split('\n');
let n, i = 0;
while (n = parseInt(lines[i++])) {
    let suspects = lines[i++].split(' ').map(Number);
    console.log(mostSuspicious(n, suspects));
}
