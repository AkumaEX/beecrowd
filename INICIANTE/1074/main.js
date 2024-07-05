let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let n = parseInt(lines.shift());
while (n--) {
    let x = parseInt(lines.shift());
    if (x === 0) console.log('NULL');
    else {
        process.stdout.write(x % 2 ? 'ODD ' : 'EVEN ');
        console.log(x < 0 ? 'NEGATIVE' : 'POSITIVE');
    }
}
