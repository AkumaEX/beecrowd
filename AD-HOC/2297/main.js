let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');

for (let test = 1, r = parseInt(lines.shift()); r > 0; test++, r = parseInt(lines.shift())) {
    console.log(`Teste ${test}`);
    let [totalA, totalB] = [0, 0];
    while (r--) {
        let [a, b] = lines.shift().split(' ').map(Number);
        totalA += a;
        totalB += b;
    }
    console.log(totalA > totalB ? 'Aldo\n' : 'Beto\n');
}
