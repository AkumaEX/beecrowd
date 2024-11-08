function mostFrequent(n) {
    let frequency = {};
    for (let digit of n) {
        if (!(digit in frequency)) frequency[digit] = 0;
        frequency[digit]++;
    }
    return Object.entries(frequency).sort((a, b) => b[1] - a[1] || b[0] - a[0])[0][0];
}

let numbers = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
for (let n of numbers) {
    console.log(mostFrequent(n));
}
