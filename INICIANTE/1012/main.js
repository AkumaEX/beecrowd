let input = require("fs").readFileSync("/dev/stdin", "utf-8");
let lines = input.split(" ");

let A = parseFloat(lines[0]);
let B = parseFloat(lines[1]);
let C = parseFloat(lines[2]);

let triangle = (A * C) / 2;
let circle = 3.14159 * Math.pow(C, 2);
let trapeze = ((A + B) * C) / 2;
let square = Math.pow(B, 2);
let rectangle = A * B;

console.log(`TRIANGULO: ${triangle.toFixed(3)}`);
console.log(`CIRCULO: ${circle.toFixed(3)}`);
console.log(`TRAPEZIO: ${trapeze.toFixed(3)}`);
console.log(`QUADRADO: ${square.toFixed(3)}`);
console.log(`RETANGULO: ${rectangle.toFixed(3)}`);
