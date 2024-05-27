function seconds(startD, startH, startM, startS, endD, endH, endM, endS) {
    return 86400 * (endD - startD) + 3600 * (endH - startH) + 60 * (endM - startM) + (endS - startS);
}

function formattedPrint(elapsed) {
    console.log(`${parseInt(elapsed / 86400)} dia(s)`);
    elapsed %= 86400;
    console.log(`${parseInt(elapsed / 3600)} hora(s)`);
    elapsed %= 3600;
    console.log(`${parseInt(elapsed / 60)} minuto(s)`);
    console.log(`${elapsed % 60} segundo(s)`);
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let startD = parseInt(lines.shift().split(' ')[1]);
let [startH, startM, startS] = lines.shift().split(' : ').map(Number);
let endD = parseInt(lines.shift().split(' ')[1]);
let [endH, endM, endS] = lines.shift().split(' : ').map(Number);
let elapsed = seconds(startD, startH, startM, startS, endD, endH, endM, endS);
formattedPrint(elapsed);
