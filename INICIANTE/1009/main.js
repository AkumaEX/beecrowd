var input = require("fs").readFileSync("/dev/stdin", "utf8");
var lines = input.split("\n");

let name = lines[0];
let salary = Number.parseFloat(lines[1]);
let sales = Number.parseFloat(lines[2]);
let total = salary + sales * 0.15;
console.log(`TOTAL = R$ ${total.toFixed(2)}`);
