# Notas

### Rascunho da Solução

A soma dos $n$ termos de uma progressão aritmética é:

$$
S_n=(a_1 + a_n)\frac{n}{2}
$$

Onde:
- $a_1$ é o primeiro termo.
- $a_n$ é o último termo.
- $n$ é o número de termos.

Nesse problema, $a_1 = 1$, $a_n = n$. Logo:

$$
S_n = (1 + n)\frac{n}{2} \\
\implies 2S_n = n + n^2 \\
\implies n^2 + n - 2S_n = 0
$$

Por Bhaskara, temos que:

$$
n = \frac{-1 \pm\sqrt{1 + 8S_n}}{2}
$$

Como queremos apenas valores positivos e inteiros, a solução do problema é:

$$
n = \lfloor\frac{-1 + \sqrt{1 + 8S_n}}{2}\rfloor
$$

Onde:
- $n$ é o número inteiro que indica o número de linhas que podem ser formadas (solução).
- $S_n$ é a entrada do problema.