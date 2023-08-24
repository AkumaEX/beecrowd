var input = require("fs").readFileSync("/dev/stdin", "utf8");
var lines = input.split("\n");

let a = Number.parseInt(lines[0]);
let b = Number.parseInt(lines[1]);
let soma = a + b;
console.log(`SOMA = ${soma}`);
