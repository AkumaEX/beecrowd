function city(ddd) {
    let cities = {
        61: 'Brasilia',
        71: 'Salvador',
        11: 'Sao Paulo',
        21: 'Rio de Janeiro',
        32: 'Juiz de Fora',
        19: 'Campinas',
        27: 'Vitoria',
        31: 'Belo Horizonte'
    };

    return cities[ddd] || 'DDD nao cadastrado';
}

let ddd = parseInt(require('fs').readFileSync('/dev/stdin', 'utf-8').trim());
console.log(city(ddd));
