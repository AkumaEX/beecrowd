function getBooks(n) {
    let books = [];
    while (n--)
        books.push(parseInt(lines.shift()));
    return books.sort((a, b) => a - b);
}

function formattedPrint(books) {
    for (let book of books)
        console.log(book.toString().padStart(4, '0'));
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
let line;
while (line = lines.shift()) {
    let n = parseInt(line);
    let books = getBooks(n);
    formattedPrint(books);
}
