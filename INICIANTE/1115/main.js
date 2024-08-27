function formattedPrint(x, y) {
    if (x > 0) {
        console.log(y > 0 ? 'primeiro' : 'quarto');
    } else {
        console.log(y > 0 ? 'segundo' : 'terceiro');
    }
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let [x, y] = lines.shift().split(' ').map(Number);
while (x && y) {
    formattedPrint(x, y);
    [x, y] = lines.shift().split(' ').map(Number);
}
