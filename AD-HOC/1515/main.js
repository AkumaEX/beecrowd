function firstCivilization(n) {
    let messages = {};
    for (let times = 0; times < n; times++) {
        let [civilization, received, traveled] = lines[i++].split(' ');
        messages[received - traveled] = civilization;
    }
    let [smallestYear] = Object.keys(messages).sort();
    return messages[smallestYear];
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
var lines = input.split('\n');
var i = 0;
let n;
while ((n = parseInt(lines[i++])) > 0) {
    console.log(firstCivilization(n));
}
