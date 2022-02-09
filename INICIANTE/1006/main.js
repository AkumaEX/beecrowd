var input = require('fs').readFileSync('/dev/stdin', 'utf8')
var lines = input.split('\n')

let A = Number.parseFloat(lines[0])
let B = Number.parseFloat(lines[1])
let C = Number.parseFloat(lines[2])
let MEDIA = (A * 2 + B * 3 + C * 5) / 10
console.log(`MEDIA = ${MEDIA.toFixed(1)}`)