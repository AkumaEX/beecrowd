function sequence(cards) {
    if (cards[0] < cards[1] && cards[1] < cards[2] && cards[2] < cards[3] && cards[3] < cards[4]) return 'C';
    if (cards[0] > cards[1] && cards[1] > cards[2] && cards[2] > cards[3] && cards[3] > cards[4]) return 'D';
    return 'N';
}

let cards = require('fs').readFileSync('/dev/stdin', 'utf-8').split(' ').map(Number);
console.log(sequence(cards));
