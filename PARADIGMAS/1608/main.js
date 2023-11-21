function getLowestPrice(b, ingredientsPrices) {
    let lowestPrice = 100 * 1000 * 1000;
    for (let cake = 0; cake < b; cake++) {
        let cakePrice = _getCakePrice(ingredientsPrices);
        if (cakePrice < lowestPrice) {
            lowestPrice = cakePrice;
        }
    }
    return lowestPrice;
}

function _getCakePrice(ingredientsPrices) {
    let price = 0;
    let [qi, ...recipe] = lines[i++].split(' ').map(Number);
    for (let i = 0; i < qi; i++) {
        let ingredient = recipe[i * 2];
        let quantity = recipe[i * 2 + 1];
        price += ingredientsPrices[ingredient] * quantity;
    }
    return price;
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
var lines = input.split('\n');
var i = 0;
let t = parseInt(lines[i++]);
for (let times = 0; times < t; times++) {
    let [d, _, b] = lines[i++].split(' ').map(Number);
    let ingredientsPrices = lines[i++].split(' ').map(Number);
    let lowestPrice = getLowestPrice(b, ingredientsPrices);
    console.log(parseInt(d / lowestPrice));
}