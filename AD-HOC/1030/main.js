function survivor(n, k) {
    if (n == 1) {
        return 1;
    }
    return((survivor(n - 1, k) + k - 1) % n) + 1
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');

nc = lines[0]
for (let i = 1; i <= nc; i++) {
    let [n, k] = lines[i].split(' ').map(Number);
    console.log(`Case ${i}: ${
        survivor(n, k)
    }`);
}
