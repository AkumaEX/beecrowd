# Notas

### Rascunho da Solução

O volume do tronco de cone é:

$$
V = \frac{1}{3}\pi H(B^2 + Bb + b^2)
$$

O volume do refrigerante no copo é: 

$$\frac{l}{n}$$ 

Se $b = B$ (cilindro), então a solução é:

$$h = \frac{V}{\pi b^2} = \frac{l}{n\pi b^2}$$

Se $b \neq B$, precisamos descobrir $B'$ (raio do líquido) tal que:

$$
\frac{l}{n} = \frac{1}{3}\pi h(B'^2 + B'b + b^2)
$$

A relação entre $h$ e $H$ é:

$$
\frac{h}{H} = \frac{B'-b}{B-b} \implies h = H\frac{B'-b}{B-b}
$$

A diferença entre cubos é:

$$
B^3-b^3 = (B-b)(B^2 + Bb + b^2)
$$

Logo:

$$
\frac{l}{n} = \frac{1}{3}\pi h(B'^2 + B'b + b^2) \\

\implies
\frac{l}{n} = \frac{1}{3}\pi H\frac{B'-b}{B-b}(B'^2 + B'b + b^2) \\

\implies
\frac{3l(B-b)}{\pi nH} = (B'-b)(B'^2 + B'b + b^2) \\

\implies
\frac{3l(B-b)}{\pi nH} = B'^3-b^3 \\

\implies
B'^3 = \frac{3l(B-b)}{\pi nH} + b^3 \\

\implies
B' = \sqrt[3]{\frac{3l(B-b)}{\pi nH} + b^3}
$$

Com $B'$, temos a solução:
$$
h = H\frac{B'-b}{B-b}
$$
