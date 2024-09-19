function totalCarries(a, b) {
    let carry = 0;
    let carries = 0;
    while (a || b) {
        carry = parseInt((carry + a % 10 + b % 10) / 10);
        carries += carry;
        a = parseInt(a / 10);
        b = parseInt(b / 10);
    }
    return carries;
}

function formattedPrint(carries) {
    if (carries)
        console.log(`${carries} carry operation${carries > 1 ? 's' : ''}.`);
    else
        console.log('No carry operation.');
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let [a, b] = lines.shift().split(' ').map(Number);
while (a || b) {
    let carries = totalCarries(a, b);
    formattedPrint(carries);
    [a, b] = lines.shift().split(' ').map(Number);
}
