function getItems() {
    return new Set(lines.shift().split(' '));
}

function formattedPrint(items) {
    return console.log([...items].sort().join(' '));
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let n = parseInt(lines.shift());
while (n--) {
    let items = getItems();
    formattedPrint(items);
}
