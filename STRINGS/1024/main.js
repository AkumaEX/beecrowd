var input = require('fs').readFileSync('/dev/stdin', 'utf8')
var lines = input.split('\n')

function firstPass(array) {
    return array.map(i => RegExp(/[A-Za-z]/).test(String.fromCharCode(i)) ? i + 3 : i)
}

function secondPass(array) {
    array.reverse()
    return array
}

function thirdPass(array) {
    for (let i = parseInt(array.length / 2); i < array.length; i++) array[i]--
    return array
}

function encrypt(text) {
    let array = [];
    for (let i = 0; i < text.length; i++) array.push(text.charCodeAt(i))
    return String.fromCharCode(...thirdPass(secondPass(firstPass(array))))
}

let N = parseInt(lines[0])
for (let i = 1; i <= N; i++) {
    console.log(encrypt(lines[i]))
}