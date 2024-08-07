function getPrices(vP, vM, vF, vQ, vB) {
    let prices = [];
    for (let p of vP) {
        for (let m of vM) {
            for (let f of vF) {
                for (let q of vQ) {
                    for (let b of vB) {
                        prices.push(p + m + f + q + b);
                    }
                }
            }
        }
    }
    return prices;
}

function sumMostExpensive(k, prices) {
    return prices.sort((a, b) => b - a).slice(0, k).reduce((a, b) => a + b);
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let [p, ...vP] = lines.shift().split(' ').map(Number);
let [m, ...vM] = lines.shift().split(' ').map(Number);
let [f, ...vF] = lines.shift().split(' ').map(Number);
let [q, ...vQ] = lines.shift().split(' ').map(Number);
let [b, ...vB] = lines.shift().split(' ').map(Number);
let k = parseInt(lines.shift());
let prices = getPrices(vP, vM, vF, vQ, vB);
console.log(sumMostExpensive(k, prices));
