let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
while ((s = lines.shift().trim()) != '0') {
    let factorial = 1;
    for (let num = 1; num <= s.length; num++) factorial *= num;
    console.log(factorial);
}
