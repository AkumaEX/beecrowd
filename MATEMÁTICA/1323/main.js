function squares(n, lookup) {
    if (! lookup[n]) {
        lookup[n] = n * n + squares(n - 1, lookup)
    }
    return lookup[n]
}


let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let lookup = {1: 1};
let i = 0;
let n;
while (n = parseInt(lines[i++])) {
    console.log(squares(n, lookup))
}
