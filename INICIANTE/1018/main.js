let n = Number(require('fs').readFileSync('/dev/stdin', 'utf-8').trim());
console.log(n);
for (let bill of [100, 50, 20, 10, 5, 2, 1]) {
    console.log(`${parseInt(n / bill)} nota(s) de R$ ${bill},00`);
    n %= bill;
}
