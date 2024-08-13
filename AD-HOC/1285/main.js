function maxQuantity(m, n) {
    let quantity = n - m + 1;
    for (let num = m; num < n + 1; num++)
        quantity -= (new Set(String(num).split(''))).size != String(num).length;
    return quantity;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
for (let line of lines) {
    let [m, n] = line.split(' ').map(Number);
    console.log(maxQuantity(m, n));
}
