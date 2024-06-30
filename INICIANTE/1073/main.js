let n = parseInt(require('fs').readFileSync('/dev/stdin', 'utf-8').trim());
for (let value = 1; value <= n; value++) {
    if (value % 2 === 0)
        console.log(`${value}^2 = ${value ** 2}`);
}
