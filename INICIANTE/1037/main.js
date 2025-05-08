let value = parseFloat(require('fs').readFileSync('/dev/stdin', 'utf-8'));
if (value < 0 || value > 100)
    console.log('Fora de intervalo');
else if (value > 75)
    console.log('Intervalo (75,100]');
else if (value > 50)
    console.log('Intervalo (50,75]');
else if (value > 25)
    console.log('Intervalo (25,50]');
else
    console.log('Intervalo [0,25]');
