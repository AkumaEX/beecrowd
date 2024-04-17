function getDictionary(m) {
    let dictionary = {};
    while (m--) {
        let japanese = lines.shift().trim();
        let portuguese = lines.shift().trim();
        dictionary[japanese] = portuguese;
    }
    return dictionary;
}

function translateLines(n, dictionary) {
    while (n--) {
        let words = lines.shift().trim().split(' ');
        for (let i in words)
            if (words[i] in dictionary)
                words[i] = dictionary[words[i]];
        console.log(words.join(' '));
    }
}

var lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
let t = parseInt(lines.shift());
while (t--) {
    let [m, n] = lines.shift().split(' ').map(Number);
    let dictionary = getDictionary(m);
    translateLines(n, dictionary);
    console.log('');
}