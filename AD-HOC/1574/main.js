function getMove(instruction, lookup) {
    if (instruction == 'LEFT') return -1;
    if (instruction == 'RIGHT') return 1;
    let i = parseInt(instruction.split(' ').slice(-1)) - 1;
    return lookup[i];
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.trim().split('\n');
let t = parseInt(lines.shift());
for (let tests = 0; tests < t; tests++) {
    let p = 0;
    let lookup = [];
    let n = parseInt(lines.shift());
    for (let instructions = 0; instructions < n; instructions++) {
        let instruction = lines.shift().trim();
        let move = getMove(instruction, lookup);
        p += move;
        lookup.push(move);
    }
    console.log(p);
}
