function percentageAboveAverage(n, grades) {
    let average = grades.reduce((a, b) => a + b) / grades.length;
    let aboveAverage = grades.filter((grade) => grade > average).length;
    return (aboveAverage / n) * 100;
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let c = lines[0];
for (let i = 1; i <= c; i++) {
    let [n, ...grades] = lines[i].split(' ').map(Number);
    console.log(`${percentageAboveAverage(n, grades).toFixed(3)}%`);
}
