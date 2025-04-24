var input = require("fs").readFileSync("/dev/stdin", "utf8");
var lines = input.split("\n");

let number = Number.parseInt(lines[0]);
let hours = Number.parseInt(lines[1]);
let wage = Number.parseFloat(lines[2]);
console.log(`NUMBER = ${number}`);
console.log(`SALARY = U$ ${(hours * wage).toFixed(2)}`);
