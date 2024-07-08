let n = parseInt(require('fs').readFileSync('/dev/stdin', 'utf-8').trim());
for (let num = 1; num < 10000; num++) {
    if (num % n == 2) console.log(num);
}
