function formattedPrint(positives, values) {
    console.log(`${positives} valores positivos`);
    console.log((values / positives).toFixed(1));
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let positives = 0;
let values = 0;
for (let value, times = 0; times < 6; times++) {
    if ((value = parseFloat(lines.shift())) > 0) {
        positives++;
        values += value;
    }
}
formattedPrint(positives, values);
