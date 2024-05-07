function minMoves(s, t) {
    let moves = 0;
    let previousEquals = true;
    for (let i = 0; i < s.length; i++) {
        let nowEquals = s[i] == t[i];
        moves += previousEquals && !nowEquals;
        previousEquals = nowEquals;
    }
    return moves;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let [s, t] = lines.shift().split(' ');
while (s != '*') {
    console.log(minMoves(s, t));
    [s, t] = lines.shift().split(' ');
}
