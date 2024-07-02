let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');

while (true) {
    let number = lines.shift();
    if (number.includes('x')) {
        console.log(parseInt(number));
    } else if (parseInt(number) > -1) {
        console.log(`0x${parseInt(number).toString(16).toUpperCase()}`);
    } else {
        break;
    }
}
