let num_leds = [6, 2, 5, 5, 4, 5, 6, 3, 7, 6];

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.trim().split('\n');
let n = lines[0]
for (let i = 1; i <= n; i++) {
    let total = 0;
    let num = lines[i];
    for (let digit of num) {
        total += num_leds[digit]
    }
    console.log(`${total} leds`)
}
