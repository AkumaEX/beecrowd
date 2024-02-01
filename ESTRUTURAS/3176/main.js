function printFormatted(dwarves, n) {
    let teams = n / 3;
    for (let team = 0; team < teams; team++) {
        console.log(`Time ${team + 1}`);
        for (let shift = 0; shift < 3; shift++) {
            console.log(dwarves[team + teams * shift].join(' '));
        }
        console.log();
    }
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');

let dwarves = [];
let n = parseInt(lines[0]);
for (let i = 1; i <= n; i++) {
    dwarves.push(lines[i].split(' '));
}
dwarves.sort((a, b) => a[0].localeCompare(b[0]));
dwarves.sort((a, b) => b[1] - a[1]);
printFormatted(dwarves, n);
