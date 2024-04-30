function elapsed(fromDay, fromMonth, toDay, toMonth) {
    let days = { 1: 31, 2: 28, 3: 31, 4: 30, 5: 31, 6: 30, 7: 31, 8: 31, 9: 30, 10: 31, 11: 30, 12: 31 };
    let total = toDay - fromDay;
    for (let month = fromMonth; month < toMonth; month++) {
        total += days[month];
    }
    return total;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let [fromDay, fromMonth] = lines.shift().split(' ').map(Number);
let [toDay, toMonth] = lines.shift().split(' ').map(Number);
console.log(elapsed(fromDay, fromMonth, toDay, toMonth));
