function maior(a, b) {
  return (a + b + Math.abs(a - b)) / 2;
}

let input = require("fs").readFileSync("/dev/stdin", "utf-8");
let data = input.split(" ");
let a = parseFloat(data[0]);
let b = parseFloat(data[1]);
let c = parseFloat(data[2]);
let greatest = maior(maior(a, b), c);
console.log(`${greatest} eh o maior`);
