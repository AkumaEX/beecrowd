function get_scores(p, grand_prix, rule) {
    let scores = new Array(p).fill(0);
    for (let results of grand_prix) {
        for (let [driver, position] of results.entries()) {
            if (position < rule.length) {
                scores[driver] += rule[position];
            }
        }
    }
    return scores;
}

function get_winner(scores) {
    max_score = Math.max(... scores);
    winner = [];
    for (let [driver, score] of scores.entries()) {
        if (score == max_score) {
            winner.push(driver + 1);
        }
    }
    return winner;
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let i = 0;
let [g, p] = lines[i++].split(' ').map(Number);
while (g !== 0 && p !== 0) {
    let grand_prix = [];
    for (let t = 0; t < g; t++) {
        grand_prix.push(lines[i++].split(' ').map(Number));
    }
    let s = parseInt(lines[i++]);
    for (let t = 0; t < s; t++) {
        rule = lines[i++].split(' ').map(Number);
        scores = get_scores(p, grand_prix, rule);
        winner = get_winner(scores);
        console.log(winner.join(' '));
    }[g, p] = lines[i++].split(' ').map(Number);
}
