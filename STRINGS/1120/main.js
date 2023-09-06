let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');

for (let line of lines) {
    let [D, K] = line.split(' ');
    if (D == '0' && K == '0') {
        break;
    }
    let result = BigInt(K.split(D).join(''))
    console.log(result.toString() || 0);
}
