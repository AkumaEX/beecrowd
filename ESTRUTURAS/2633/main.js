function formattedPrint(meats) {
    console.log(Object.values(meats).join(' '));
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
let line;
while (line = lines.shift()) {
    let meats = {};
    let n = parseInt(line);
    for (let times = 0; times < n; times++) {
        let [meat, date] = lines.shift().split(' ');
        meats[parseInt(date)] = meat;
    }
    formattedPrint(meats);
}
