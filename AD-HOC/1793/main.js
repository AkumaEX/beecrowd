function getActiveTime(n) {
    let times = lines[i++].split(' ').map(Number);
    let activeTime = n * 10;
    for (let i = 0; i < n - 1; i++) {
        let difference = times[i + 1] - times[i];
        if (difference < 10) {
            activeTime -= 10 - difference;
        }
    }
    return activeTime;
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
var lines = input.split('\n');
var i = 0;
let n;
while ((n = parseInt(lines[i++])) > 0) {
    console.log(getActiveTime(n));
}