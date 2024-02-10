let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let experiment, n;
for (experiment = 0; (n = parseInt(lines[experiment])) > -1; experiment++) {
    console.log(`Experiment ${experiment +1}: ${parseInt(n / 2)} full cycle(s)`);
}
