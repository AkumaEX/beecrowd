function phillBonati(n, memo) {
    if (memo[n] === 0) {
        if (n < 2)
            memo[n] = n;
        else if (n % 2)
            memo[n] = phillBonati(n - 1, memo) * phillBonati(n - 2, memo);
        else
            memo[n] = phillBonati(n - 1, memo) + phillBonati(n - 2, memo);
    }
    return memo[n];
}

let memo = Array(18).fill(0);
let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n').map(Number);
for (let n of lines)
    console.log(phillBonati(n - 1, memo));
