var raio = parseFloat(require("fs").readFileSync("/dev/stdin", "utf8"));
let area = raio * raio * 3.14159;
console.log(`A=${area.toFixed(4)}`);
