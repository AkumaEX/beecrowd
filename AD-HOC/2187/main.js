function withdraw(bits) {
    let bills = [0, 0, 0, 0];
    bills[0] = parseInt(bits / 50);
    bits %= 50;
    bills[1] = parseInt(bits / 10);
    bits %= 10;
    bills[2] = parseInt(bits / 5);
    bills[3] = bits % 5;
    return bills;
}

function printFormatted(test, bills) {
    console.log(`Teste ${test}`);
    console.log(bills.join(' '));
    console.log();
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
var lines = input.split('\n');
var i = 0, test = 1;
let v;
while (v = parseInt(lines[i++])) {
    let bills = withdraw(v);
    printFormatted(test, bills);
    test++;
}
