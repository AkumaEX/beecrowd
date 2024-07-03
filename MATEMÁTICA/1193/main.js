function formattedPrint(c, x, y) {
    console.log(`Case ${c}:`);
    if (y == 'bin') {
        let integer = parseInt(x, 2);
        console.log(`${integer} dec`);
        console.log(`${integer.toString(16)} hex`);
    } else if (y == 'hex') {
        let integer = parseInt(x, 16);
        console.log(`${integer} dec`);
        console.log(`${integer.toString(2)} bin`);
    } else {
        let integer = parseInt(x);
        console.log(`${integer.toString(16)} hex`);
        console.log(`${integer.toString(2)} bin`);
    }
    console.log();
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let n = parseInt(lines.shift());
for (let c = 1; c <= n; c++) {
    let [x, y] = lines.shift().split(' ');
    formattedPrint(c, x, y);
}
