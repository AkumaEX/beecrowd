function decimal(acm) {
    let factorial = [1, 1, 2, 6, 24, 120];
    let result = 0;
    for (let i = 1; acm > 0; i++) {
        let digit = acm % 10;
        result += digit * factorial[i];
        acm = parseInt(acm / 10);
    }
    return result;
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let i = 0;
let acm;
while (acm = parseInt(lines[i++])) {
    console.log(decimal(acm));
}
