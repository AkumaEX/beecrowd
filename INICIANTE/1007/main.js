var input = require('fs').readFileSync('/dev/stdin', 'utf8')
var lines = input.split('\n')

let A = Number.parseInt(lines[0])
let B = Number.parseInt(lines[1])
let C = Number.parseInt(lines[2])
let D = Number.parseInt(lines[3])
let DIFERENCA = A * B - C * D
console.log(`DIFERENCA = ${DIFERENCA}`)