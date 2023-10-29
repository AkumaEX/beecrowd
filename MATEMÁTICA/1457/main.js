function kFactorial(n, i, k) {
    if (n <= i * k) {
        return BigInt(1);
    }
    return(n - i * k) * kFactorial(n, i + BigInt(1), k);
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let t = parseInt(lines[0]);
for (let i = 1; i <= t; i++) {
    let [number, exclamations] = lines[i].match(/(\d+)(!+)/).slice(1);
    let [n, k] = [number, exclamations.length];
    console.log(kFactorial(BigInt(n), BigInt(0), BigInt(k)).toString());
}
