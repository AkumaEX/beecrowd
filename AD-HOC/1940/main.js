function getTotal(j, scores) {
    let total = Array(j).fill(0);
    for (let [i, score] of scores.entries())
        total[i % j] += score;
    return total;
}

function getWinner(total) {
    let maxScore = Math.max(...total);
    return total.lastIndexOf(maxScore) + 1;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let j = parseInt(lines.shift().split(' ')[0]);
let scores = lines.shift().split(' ').map(Number);
let total = getTotal(j, scores);
console.log(getWinner(total));
