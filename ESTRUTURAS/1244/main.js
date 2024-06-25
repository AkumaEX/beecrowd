function strings() {
    return lines.shift().split(' ').sort((a, b) => b.length - a.length);
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let n = parseInt(lines.shift());
while (n--)
    console.log(strings().join(' '));
