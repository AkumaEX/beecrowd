function percentageAboveAverage(n, grades) {
    let average = grades.reduce((a, b) => a + b) / grades.length;
    let aboveAverage = grades.filter((grade) => grade > average).length;
    return 100 * aboveAverage / n;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
let c = lines.shift();
while (c--) {
    let [n, ...grades] = lines.shift().split(' ').map(Number);
    console.log(`${percentageAboveAverage(n, grades).toFixed(3)}%`);
}
