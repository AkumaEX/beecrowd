function getFrequencies(p) {
    let frequencies = {};
    for (let question of p) {
        frequencies[question] = question in frequencies ? frequencies[question] + 1 : 1;
    }
    return Object.values(frequencies);
}

function getQuestions(frequencies, k) {
    let questions = 0;
    for (let frequency of frequencies) {
        questions += frequency >= k;
    }
    return questions;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let [n, k] = lines.shift().split(' ').map(Number);
while (n > 0 && k > 0) {
    let p = lines.shift().split(' ').map(Number);
    let frequencies = getFrequencies(p);
    console.log(getQuestions(frequencies, k));
    [n, k] = lines.shift().split(' ').map(Number);
}
