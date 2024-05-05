function timeResults(n) {
    let results = {};
    for (let car = 1; car <= n; car++) {
        let time = lines.shift().split(' ').map(Number).reduce((a, b) => a + b);
        results[time] = car;
    }
    return results;
}

function printSorted(results) {
    let [first, second, third] = Object.keys(results).slice(0, 3);
    console.log(results[first]);
    console.log(results[second]);
    console.log(results[third]);
}

var lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let n = parseInt(lines.shift().split(' ')[0]);
printSorted(timeResults(n));
