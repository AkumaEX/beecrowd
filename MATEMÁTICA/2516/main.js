function elapsed(s, va, vb) {
    return s / (va - vb);
}

function formattedPrint(time) {
    console.log(time < 0 ? 'impossivel' : time.toFixed(2));
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
for (let line of lines) {
    let [s, va, vb] = line.split(' ').map(Number);
    formattedPrint(elapsed(s, va, vb));
}
