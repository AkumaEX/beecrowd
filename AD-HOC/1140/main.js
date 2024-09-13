function tautogram(sentence) {
    return new Set(sentence.split(' ').map((word) => word[0].toLowerCase())).size === 1;
}

let sentences = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let sentence = sentences.shift().trim();
while (!sentence.includes('*')) {
    console.log(tautogram(sentence) ? 'Y' : 'N');
    sentence = sentences.shift().trim();
}
