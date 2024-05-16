function sumNumbers(string) {
    return string.match(/\d+/g).map(Number).reduce((acc, value) => acc + value);
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let n = parseInt(lines.shift());
while (n--) {
    console.log(sumNumbers(lines.shift()));
}
