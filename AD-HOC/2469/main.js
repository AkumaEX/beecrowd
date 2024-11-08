function mostFrequent() {
    let frequency = {};
    for (let grade of lines[1].split(' ').map(Number)) {
        if (!(grade in frequency)) frequency[grade] = 0;
        frequency[grade]++;
    }
    return Object.entries(frequency).sort((a, b) => b[1] - a[1] || b[0] - a[0])[0][0];
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
console.log(mostFrequent());
