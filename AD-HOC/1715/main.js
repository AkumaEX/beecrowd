function scoredAllMatches(x) {
    for (let goals of x)
        if (goals === 0) return 0;
    return 1;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
let players = 0;
let n = parseInt(lines.shift());
for (let player = 0; player < n; player++) {
    let x = lines.shift().split(' ').map(Number);
    players += scoredAllMatches(x);
}
console.log(players);
