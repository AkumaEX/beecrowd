function elapsed(startH, startM, endH, endM) {
    let startMinutes = 60 * startH + startM;
    let endMinutes = 60 * endH + endM;
    let elapsedM = endMinutes - startMinutes;
    if (elapsedM < 1) elapsedM += 1440;
    let elapsedH = parseInt(elapsedM / 60);
    elapsedM = elapsedM % 60;
    return [elapsedH, elapsedM];
}

let line = require('fs').readFileSync('/dev/stdin', 'utf-8').trim();
let [startH, startM, endH, endM] = line.split(' ').map(Number);
let [elapsedH, elapsedM] = elapsed(startH, startM, endH, endM);
console.log(`O JOGO DUROU ${elapsedH} HORA(S) E ${elapsedM} MINUTO(S)`);
