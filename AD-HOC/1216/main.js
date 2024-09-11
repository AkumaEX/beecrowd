let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
let [quantity, friends] = [0, 0];
for (let i = 1; i < lines.length; i += 2) {
    quantity += parseInt(lines[i]);
    friends++;
}
console.log((quantity / friends).toFixed(1));
