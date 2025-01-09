let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let m, h = 1;
while (m = parseInt(lines.shift())) {
    let cypher = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'];
    console.log(`Instancia ${h++}`);
    for (let code of lines.shift().trim().split(' ').map(Number)) {
        process.stdout.write(`${cypher[code - 1]}`);
        cypher.unshift(cypher.splice(code - 1, 1));
    }
    console.log('\n');
}
