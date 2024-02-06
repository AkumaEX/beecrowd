function getCategory(k) {
    for (let category of [1, 3, 5, 10, 25, 50, 100]) {
        if (k <= category) return category;
    }
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let k = parseInt(lines[0]);
console.log(`Top ${getCategory(k)}`);
