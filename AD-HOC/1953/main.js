function attended(n) {
    let [epr, ehd, intruders] = [0, 0, 0];
    while (n--) {
        let course = lines.shift().split(' ')[1];
        if (course == 'EPR') epr++;
        else if (course == 'EHD') ehd++;
        else intruders++;
    }
    return [epr, ehd, intruders];
}

function formattedPrint(epr, ehd, intruders) {
    console.log(`EPR: ${epr}`);
    console.log(`EHD: ${ehd}`);
    console.log(`INTRUSOS: ${intruders}`);
}

var lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
let n;
while (n = lines.shift()) {
    let [epr, ehd, intruders] = attended(n);
    formattedPrint(epr, ehd, intruders);
}