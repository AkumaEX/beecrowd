function moonStage(before, after) {
    if (after < 3) return 'nova';
    if (after > 96) return 'cheia';
    if (after > before) return 'crescente';
    return 'minguante';
}

let [before, after] = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split(' ').map(Number);
console.log(moonStage(before, after));
