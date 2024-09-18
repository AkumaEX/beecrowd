let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let t = parseInt(lines.shift());
while (t--) {
    lines.shift();
    console.log(new Set(lines.shift().split(' ')).size);
}
