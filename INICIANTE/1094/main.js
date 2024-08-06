function formattedPrint(quantities) {
    let total = quantities.C + quantities.R + quantities.S;
    console.log(`Total: ${total} cobaias`);
    console.log(`Total de coelhos: ${quantities.C}`);
    console.log(`Total de ratos: ${quantities.R}`);
    console.log(`Total de sapos: ${quantities.S}`);
    console.log(`Percentual de coelhos: ${(100 * quantities.C / total).toFixed(2)} %`);
    console.log(`Percentual de ratos: ${(100 * quantities.R / total).toFixed(2)} %`);
    console.log(`Percentual de sapos: ${(100 * quantities.S / total).toFixed(2)} %`);
}

let quantities = { 'C': 0, 'R': 0, 'S': 0 };
let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let n = parseInt(lines.shift());
while (n--) {
    let [quantity, type] = lines.shift().split(' ');
    quantities[type] += parseInt(quantity);
}
formattedPrint(quantities);
