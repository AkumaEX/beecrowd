function printFormatted(n) {
    n += 0.0001;
    console.log('NOTAS:');
    for (let bill of [100, 50, 20, 10, 5, 2]) {
        console.log(`${parseInt(n / bill)} nota(s) de R$ ${bill.toFixed(2)}`);
        n = n % bill;
    }
    console.log('MOEDAS:');
    for (let coin of [1, 0.50, 0.25, 0.10, 0.05, 0.01]) {
        console.log(`${parseInt(n / coin)} moeda(s) de R$ ${coin.toFixed(2)}`);
        n = n % coin;
    }
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let n = parseFloat(lines[0]);
printFormatted(n);
