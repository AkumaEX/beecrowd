# Notas

### Rascunho da Solução

Para cada número de pedaço $I$, $I-1$ pedaços são armazenados. Assim, o número de pedaços armazenados é:
$$
(I_1-1) + (I_2-1)+\dots + (I_{n-1}-1) + (I_n-1) \\[10pt]
=\sum_{i=1}^{n}{(I_i-1)} \\[10pt]
=\sum_{i=1}^{n}{I_i}-\sum_{i=1}^{n}{1} \\[10pt]
=\sum_{i=1}^{n}{I_i} - n
$$