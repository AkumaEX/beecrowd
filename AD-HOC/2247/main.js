let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
for (let n, test = 1, difference = 0; n = parseInt(lines.shift()); test++, difference = 0, console.log()) {
    console.log(`Teste ${test}`);
    while (n--) {
        let [j, z] = lines.shift().split(' ').map(Number);
        difference += j - z;
        console.log(difference);
    }
}
