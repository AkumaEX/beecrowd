function getReindeers(n) {
    let reindeers = [];
    while (n--) {
        let [s, w, a, h] = lines.shift().split(' ');
        reindeers.push([s, parseInt(w), parseInt(a), parseFloat(h)]);
    }
    return reindeers.sort((a, b) => b[1] - a[1] || a[2] - b[2] || a[3] - b[3] || a[0].localeCompare(b[0]));
}

function formattedPrint(scenario, m, reindeers) {
    console.log(`CENARIO {${scenario}}`);
    for (let i = 0; i < m; i++)
        console.log(`${i + 1} - ${reindeers[i][0]}`);
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let t = parseInt(lines.shift());
for (let scenario = 1; scenario < t + 1; scenario++) {
    let [n, m] = lines.shift().split(' ').map(Number);
    let reindeers = getReindeers(n);
    formattedPrint(scenario, m, reindeers);
}
