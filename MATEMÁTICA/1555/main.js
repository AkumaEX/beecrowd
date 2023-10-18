function winner(x, y) {
    let rafael = (3 * x) ** 2 + y ** 2;
    let beto = 2 * x ** 2 + (5 * y) ** 2;
    let carlos = -100 * x + y ** 3;

    if (rafael > beto && rafael > carlos) {
        return 'Rafael';
    } else if (beto > rafael && beto > carlos) {
        return 'Beto';
    }
    return 'Carlos';
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let n = parseInt(lines[0]);
for (let i = 1; i <= n; i++) {
    let [x, y] = lines[i].split(' ').map(Number);
    console.log(`${winner(x, y)} ganhou`);
}
