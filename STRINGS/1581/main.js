function language(k) {
    let languages = new Set();
    while (k--) languages.add(lines.shift());
    return languages.size === 1 ? languages.values().next().value : 'ingles';
}


let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let n = parseInt(lines.shift());
while (n--) {
    let k = parseInt(lines.shift());
    console.log(language(k));
}
