var input = require("fs").readFileSync("/dev/stdin", "utf8");
var lines = input.split("\n");

let a = Number.parseInt(lines[0]);
let b = Number.parseInt(lines[1]);
let c = Number.parseInt(lines[2]);
let d = Number.parseInt(lines[3]);
let diferenca = a * b - c * d;
console.log(`DIFERENCA = ${diferenca}`);
