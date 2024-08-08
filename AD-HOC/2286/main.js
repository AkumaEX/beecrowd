let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
for (let test = 1, n = parseInt(lines.shift()); n > 0; test++, n = parseInt(lines.shift())) {
    console.log(`Teste ${test}`);
    let [p1, p2] = [lines.shift(), lines.shift()];
    while (n--) {
        let [h1, h2] = lines.shift().split(' ').map(Number);
        console.log((h1 + h2) % 2 === 0 ? p1 : p2);
    }
    console.log();
}
