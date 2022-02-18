var input = require('fs').readFileSync('/dev/stdin', 'utf8')
var lines = input.split('\n')

function addition(n1, d1, n2, d2) {
    return [n1 * d2 + n2 * d1, d1 * d2]
}

function subtraction(n1, d1, n2, d2) {
    return [n1 * d2 - n2 * d1, d1 * d2]
}

function multiplication(n1, d1, n2, d2) {
    return [n1 * n2, d1 * d2]
}

function division(n1, d1, n2, d2) {
    return [n1 * d2, n2 * d1]
}

function simplify(nl, dl) {
    let smaller = Math.abs(nl) < Math.abs(dl) ? Math.abs(nl) : Math.abs(dl)
    for (let i = smaller; i > 0; i--)
        if ((nl % i === 0) && (dl % i === 0))
            return [parseInt(nl / i), parseInt(dl / i)]
}

const selector = { '+': addition, '-': subtraction, '*': multiplication, '/': division }
let N = lines[0]
for (let i = 1; i <= N; i++) {
    let [n1, , d1, op, n2, , d2] = lines[i].split(' ')
    let [nl, dl] = selector[op](n1, d1, n2, d2)
    let [nr, dr] = simplify(nl, dl)
    console.log(`${nl}/${dl} = ${nr}/${dr}`)
}