function percentage(char, text) {
    let count = 0;
    for (let word of text)
        count += word.includes(char);
    return 100.0 * count / text.length;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let char = lines.shift().trim();
let text = lines.shift().trim().split(' ');
console.log(percentage(char, text).toFixed(1));
