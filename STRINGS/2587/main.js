function isPossible(word1, word2, word3) {
    let first = -1;
    let second = -1;
    for (let index in word3)
        if (word3[index] == '_')
            first < 0 ? first = index : second = index;
    return word1[first] == word2[second] || word1[second] == word2[first];
}


let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let c = parseInt(lines.shift());
while (c--) {
    let word1 = lines.shift();
    let word2 = lines.shift();
    let word3 = lines.shift();
    console.log(isPossible(word1, word2, word3) ? 'Y' : 'N');
}
