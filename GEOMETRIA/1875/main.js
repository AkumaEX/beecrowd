function getScores(p) {
    const points = {
        'R': {'B': 1, 'G': 2},
        'G': {'R': 1, 'B': 2},
        'B': {'G': 1, 'R': 2}
    };
    let scores = {
        'R': 0,
        'G': 0,
        'B': 0
    };
    for (let times = 0; times < p; times++) {
        let [m, s] = lines[i++].split(' ');
        scores[m] += points[m][s];
    }
    return scores;
}

function getWinner(scores) {
    if (scores.R > scores.G && scores.R > scores.B) {
        return 'red';
    } else if (scores.G > scores.R && scores.G > scores.B) {
        return 'green';
    } else if (scores.B > scores.R && scores.B > scores.G) {
        return 'blue';
    } else if (scores.R == scores.G && scores.R == scores.B) {
        return 'trempate';
    }
    return 'empate';
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
var lines = input.split('\n');
var i = 0;
let c = parseInt(lines[i++]);
for (let times = 0; times < c; times++) {
    let p = parseInt(lines[i++]);
    let scores = getScores(p);
    console.log(getWinner(scores));
}
