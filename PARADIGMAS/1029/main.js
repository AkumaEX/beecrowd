function fibonacci(n, lookup) {
    if (n < 2) {
        return n;
    }
    if (! lookup[n]) {
        lookup[n] = fibonacci(n - 1, lookup) + fibonacci(n - 2, lookup);
    }
    return lookup[n]
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n').map(Number);
let N = lines[0];
let lookup = {};
for (let i = 1; i <= N; i++) {
    let n = lines[i];
    let result = fibonacci(n, lookup);
    let num_calls = 2 * fibonacci(n + 1, lookup) - 2;
    console.log(`fib(${n}) = ${num_calls} calls = ${result}`);
}
