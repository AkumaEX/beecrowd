function results(text, word) {
    let indexes = [];
    let re = RegExp(`\\b${word}\\b`, 'g');
    while (match = re.exec(text)) indexes.push(match.index);
    return indexes.length ? indexes.join(' ') : -1;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let q = parseInt(lines.shift());
while (q--) {
    let text = lines.shift().trim();
    let word = lines.shift().trim();
    console.log(results(text, word));
}
