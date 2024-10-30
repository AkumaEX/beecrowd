function transform(number) {
    while (number.length > 1)
        number = String(number.split('').map(Number).reduce((a, b) => a + b));
    return number;
}

function compare(m, n) {
    if (parseInt(m) > parseInt(n)) return 1;
    if (parseInt(m) < parseInt(n)) return 2;
    return 0;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let [m, n] = lines.shift().split(' ');
while (m != '0' || n != '0') {
    console.log(compare(transform(m), transform(n)));
    [m, n] = lines.shift().split(' ');
}
