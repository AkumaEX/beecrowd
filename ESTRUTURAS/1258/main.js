function getInfos(n) {
    let infos = {};
    while (n--) {
        let name = lines.shift();
        let [color, size] = lines.shift().split(' ');
        if (color in infos) {
            if (size in infos[color]) {
                infos[color][size].push(name);
            } else {
                infos[color][size] = [name];
            }
        } else {
            infos[color] = { [size]: [name] };
        }
    }
    return infos;
}

function formattedPrint(infos) {
    for (let color of Object.keys(infos).sort())
        for (let size of Object.keys(infos[color]).sort().reverse())
            for (let name of infos[color][size].sort())
                console.log(`${color} ${size} ${name}`);
}


let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let n = parseInt(lines.shift());
while (true) {
    let infos = getInfos(n);
    formattedPrint(infos);
    if (n = parseInt(lines.shift()))
        console.log();
    else
        break;
}
