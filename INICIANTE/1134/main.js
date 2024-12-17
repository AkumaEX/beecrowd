let gasoline = 0;
let ethanol = 0;
let diesel = 0;

let fuels = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n').map(Number);
for (let fuel of fuels) {
    if (fuel == 1) {
        ethanol++;
    } else if (fuel == 2) {
        gasoline++;
    } else if (fuel == 3) {
        diesel++;
    } else if (fuel == 4) {
        break;
    }
}

console.log('MUITO OBRIGADO');
console.log(`Alcool: ${ethanol}`);
console.log(`Gasolina: ${gasoline}`);
console.log(`Diesel: ${diesel}`);
