function getCards(deck) {
    let discarded = [];
    while (deck.length > 1) {
        discarded.push(deck.shift());
        deck.push(deck.shift());
    }
    return [discarded, deck];
}

function printFormatted(discarded, remaining) {
    console.log(`Discarded cards: ${discarded.join(', ')}`);
    console.log(`Remaining card: ${remaining[0]}`);
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let i = 0;
let n;
while (n = parseInt(lines[i++])) {
    let deck = Array.from({length: n}, (_, i) => i + 1);
    let [discarded, remaining] = getCards(deck);
    printFormatted(discarded, remaining)
}
