function getLines(n) {
    let lines = [];
    let maxSize = 0;
    for (let times = 0; times < n; times++) {
        let line = input[i++].trim().replace(/\s+/g, ' ');
        lines.push(line);
        let lineSize = line.length;
        if (lineSize > maxSize) maxSize = lineSize;
    }
    return [lines, maxSize];
}

function formattedPrint(lines, maxSize) {
    for (let line of lines) {
        console.log(line.padStart(maxSize));
    }
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let i = 0;
let n = parseInt(input[i++]);
while (n > 0) {
    let [lines, maxSize] = getLines(n);
    formattedPrint(lines, maxSize);
    if ((n = parseInt(input[i++])) > 0) {
        console.log();
    }
}
