let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
for (let line of lines) {
    let [hashmat, opponent] = line.split(' ').map(Number);
    console.log(hashmat > opponent ? hashmat - opponent : opponent - hashmat);
}
