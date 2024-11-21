function fibonacci(n, memo) {
    if (memo[n]) return memo[n];
    memo[n] = n < 2 ? n : fibonacci(n - 1, memo) + fibonacci(n - 2, memo);
    return memo[n];
}

let memo = new Array(42).fill(0);
let n, lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n').map(Number);
while (n = lines.shift()) {
    console.log(fibonacci(n + 1, memo));
}
