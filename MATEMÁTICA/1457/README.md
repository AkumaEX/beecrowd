# Notas

### Rascunho da Solução

K-fatorial de N

$$(N) \times (N-k) \times (N-2K) \times (N-3K) \times ..., $$

Pode ser escrito como produtório de

$$N - iK$$

Para $i$ de $0, 1, 2, ...$ até que $N \le iK$

### Implementação

- Função recursiva: o caso base é quando $N \le iK$ e retorna $1$

- *Regex* para captura de dois grupos: o primeiro para captura de $N$ e o segundo para $K$ (quantidade de exclamações) usando o padrão: 
`/(\d+)(!+)/`

- `BigInteger` para *Javascript* e `long` para *Java* são necessários para tratar inteiros grandes.