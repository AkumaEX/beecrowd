let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let i = 0;
while (parseInt(lines[i++]) > 0) {
    let p = lines[i++].split(' ').map(Number);
    let cumulativeDebt = 0;
    let timesToAsk = 0;
    for (let debt of p) {
        cumulativeDebt += debt;
        if (cumulativeDebt % 100 === 0) {
            timesToAsk++;
        }
    }
    console.log(timesToAsk);
}