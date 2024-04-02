function getProducts() {
    let products = {};
    let m = parseInt(lines.shift());
    while (m--) {
        let [product, price] = lines.shift().split(' ');
        products[product] = parseFloat(price);
    }
    return products;
}

function getTotal(products) {
    let total = 0;
    let p = parseInt(lines.shift());
    while (p--) {
        let [product, qty] = lines.shift().split(' ');
        total += products[product] * parseInt(qty);
    }
    return total;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
let n = parseInt(lines.shift());
while (n--) {
    let products = getProducts();
    let total = getTotal(products);
    console.log(`R$ ${total.toFixed(2)}`);
}
