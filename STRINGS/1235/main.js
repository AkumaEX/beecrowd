function decypher(word) {
    let length = word.length;
    let middle = length / 2;
    let result = [];
    let chars = word.split('');
    for (let i = 0; i < length; i++)
        result[length - 1 - i] = chars[(middle + i) % length];
    return result.join('');
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
for (let i = 0, n = lines[i++]; i <= n; i++) {
    let word = lines[i];
    console.log(decypher(word));
}
