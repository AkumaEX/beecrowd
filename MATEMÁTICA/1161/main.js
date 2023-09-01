function factorial(n, lookup) {
    if (n < BigInt(2)) {
        return BigInt(1);
    }
    if (! lookup[n]) {
        lookup[n] = n * factorial(n - BigInt(1), lookup);
    }
    return lookup[n];
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let lookup = {}
for (let line of lines) {
    if (line) {
        let [m, n] = line.split(' ').map(BigInt);
        let result = factorial(m, lookup) + factorial(n, lookup);
        console.log(result.toString());
    }
}
