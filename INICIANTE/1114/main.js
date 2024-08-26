let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
while (lines.shift() != 2002) {
    console.log('Senha Invalida');
}
console.log('Acesso Permitido');
