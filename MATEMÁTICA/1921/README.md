# Notas

### Rascunho da Solução

Supomos uma pipa de 10 lados ($n=10$), com cada ponta numerada de 1 a 10:
- A ponta 1 deve se conectar com 7 pontas (3, 4, 5, 6, 7, 8 e 9);
- A ponta 2 deve se conectar com 7 pontas (4, 5, 6, 7, 8, 9 e 10);
- A ponta 3 deve se conectar com 6 pontas (5, 6, 7, 8, 9 e 10). Esta ponta já está conectado com a ponta 1;
- A ponta 4 deve se conectar com 5 pontas;
- A ponta 5 deve se conectar com 4 pontas;
- A ponta 6 deve se conectar com 3 pontas;
- A ponta 7 deve se conectar com 2 pontas;
- A ponta 8 deve se conectar com 1 ponta;
- As pontas 9 e 10 já estão conectadas com as outras.

A soma de todas as conexões é 35 (7 + 7 + 6 + 5 + 4 + 3 + 2 + 1). Isto equivale à soma de n-3 com a soma da progressão aritmética de 1 a n-3. A fórmula da soma da progressão aritmética é:

$$S_n=\frac{(a_1 + a_n)n}{2}$$

Para o nosso caso temos:

$$S_{n-3}=\frac{(1+n-3)(n-3)}{2}=\frac{(n-2)(n-3)}{2}$$

Logo, a solução do problema é:

$$(n-3)+\frac{(n-2)(n-3)}{2}