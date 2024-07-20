function formattedPrint(dollars, cents) {
    dollars = parseInt(dollars).toLocaleString();
    console.log(`$${dollars}.${cents.padStart(2, '0')}`);
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
let dollars;
while (dollars = lines.shift()) {
    let cents = lines.shift();
    formattedPrint(dollars, cents);
}
