function number(word) {
    if (word.length > 3) return 3;
    if (word[0] == 'o' && word[1] == 'n' || word[0] == 'o' && word[2] == 'e' || word[1] == 'n' && word[2] == 'e') return 1;
    return 2;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
for (let i = 0, n = parseInt(lines[i++]); i <= n; i++) {
    console.log(number(lines[i].trim()));
}
