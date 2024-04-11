function elapsed(start, finish) {
    if (finish > start) return finish - start;
    return finish - start + 24;
}

let line = require('fs').readFileSync('/dev/stdin', 'utf-8').trim();
let [start, finish] = line.split(' ').map(Number);
console.log(`O JOGO DUROU ${elapsed(start, finish)} HORA(S)`);
