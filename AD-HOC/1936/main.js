function smallestFactorialSum(n) {
    let k = 0;
    let factorials = [40320, 5040, 720, 120, 24, 6, 2, 1];
    for (let a of factorials) {
        while (n >= a) {
            n -= a;
            k += 1;
        }
        if (n === 0) {
            return k;
        }
    }
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let n = parseInt(lines[0]);
console.log(smallestFactorialSum(n));