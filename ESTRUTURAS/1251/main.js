function getFrequencies(line) {
    let frequencies = {};
    for (let c of line.split('').map(c => c.charCodeAt()))
        frequencies[c] = (frequencies[c] || 0) + 1;
    return Object.entries(frequencies).sort((a, b) => a[1] - b[1] || b[0] - a[0]);
}

function formattedPrint(i, frequencies) {
    if (i > 0) console.log('');
    for (let [c, frequency] of frequencies)
        console.log(`${c} ${frequency}`);
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
for (let [i, line] of lines.entries())
    formattedPrint(i, getFrequencies(line));
