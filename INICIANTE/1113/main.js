let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let [x, y] = lines.shift().split(' ').map(Number);
while (x != y) {
    console.log(x > y ? 'Decrescente' : 'Crescente');
    [x, y] = lines.shift().split(' ').map(Number);
}
