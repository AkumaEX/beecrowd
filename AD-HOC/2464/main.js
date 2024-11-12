function decode(key, code) {
    let indexOf = { 'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': 4, 'f': 5, 'g': 6, 'h': 7, 'i': 8, 'j': 9, 'k': 10, 'l': 11, 'm': 12, 'n': 13, 'o': 14, 'p': 15, 'q': 16, 'r': 17, 's': 18, 't': 19, 'u': 20, 'v': 21, 'w': 22, 'x': 23, 'y': 24, 'z': 25 };
    return code.split('').map(c => key[indexOf[c]]).join('');
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let key = lines.shift().trim();
let code = lines.shift().trim();
console.log(decode(key, code));
