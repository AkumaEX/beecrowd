function totalPages(q, d, p) {
    return parseInt((q * d * p) / (p - q));
}

function formattedPrint(pages) {
    console.log(`${pages} ${pages > 1 ? 'paginas' : 'pagina'}`);
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let quantities = lines.shift().split(' ').map(Number);
while (quantities.length > 1) {
    let pages = totalPages(...quantities);
    formattedPrint(pages);
    quantities = lines.shift().split(' ').map(Number);
}
