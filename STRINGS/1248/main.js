function dinner(diet, breakfast, lunch) {
    for (let food of breakfast + lunch) {
        if (diet.includes(food)) {
            diet = diet.replace(food, '');
        } else {
            return 'CHEATER';
        }
    }
    return diet.split('').sort().join('');
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let i = 0;
let n = parseInt(lines[i++]);
for (let times = 0; times < n; times++) {
    let diet = lines[i++];
    let breakfast = lines[i++];
    let lunch = lines[i++];
    console.log(dinner(diet, breakfast, lunch));
}
