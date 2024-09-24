function decode(code, pos) {
    return code.split('').map((char) => decrypt(char, pos)).join('');
}

function decrypt(char, pos) {
    return String.fromCharCode(((((char.charCodeAt() - 65 - pos) % 26) + 26) % 26) + 65);
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let n = parseInt(lines.shift());
while (n--) {
    let code = lines.shift().trim();
    let pos = parseInt(lines.shift());
    console.log(decode(code, pos));
}
