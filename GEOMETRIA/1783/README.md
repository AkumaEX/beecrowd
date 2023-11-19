# Notas

### Rascunho da Solução

Dado duas posições de uma estrela, é possível traçar uma reta entre elas. Uma reta perpendicular, que passa pelo ponto médio entre as posições, passa também pelo Buraco Negro. Com as posições da outra estrela é possível calcular uma outra reta perpendicular que também passa pelo Buraco Negro. A intersecção das duas retas perpendiculares é a coordenada exata do Buraco Negro.

A equação reduzida da reta é: 
$$y = mx + b$$
onde $m$ e $b$ são os coeficientes angular e linear.

O coeficiente angular da reta é calculado por dois pontos (coordenadas da estrela antes e depois):
$$m = \frac{y_{antes} - y_{depois}}{x_{antes} - x_{depois}}$$

O coeficiente angular da reta perpendicular é:
$$-\frac{1}{m}$$

Como vimos anteriormente que o coeficiente angular é calculado a partir de dois pontos, podemos usar a posição do Buraco Negro $(x, y)$ e o ponto médio entre as duas posições $(x_m, y_m)$:

$$-\frac{1}{m} = \frac{y - y_m}{x - x_m} \implies y = y_m - \frac{(x - x_m)}{m}$$

Seja $(x_m', y_m')$ o ponto médio das posições da segunda estrela e  $m'$ o coeficiente angular da reta perpendicular que passa entre o ponto e o Buraco Negro. Temos que:

$$-\frac{1}{m'} = \frac{y - y_m'}{x - x_m'} \implies y = y'_m -\frac{(x - x_m')}{m'}$$

Como o ponto do Buraco Negro $(x, y)$ é o ponto em comum das duas retas, vamos procurar a coordenada $x$:

$$
\begin{align*}
y_m - \frac{(x-x_m)}{m}  &= y'_m - \frac{(x-x_m')}{m'} \\[10pt]

\implies y_m - \frac{x}{m} + \frac{x_m}{m} &= y_m' - \frac{x}{m'} + \frac{x_m'}{m'} \\[10pt]

\implies \frac{x}{m'} - \frac{x}{m} &= y_m' - y_m + \frac{x_m'}{m'} - \frac{x_m}{m}\\[10pt]

\implies x\left(\frac{1}{m'} - \frac{1}{m}\right) &= y_m' - y_m + \left( \frac{m \times x_m' - m' \times x_m}{m \times m'} \right) \\[10pt]

\implies x\left(\frac{m - m'}{m \times m'} \right) &= (y_m' - y_m )\left(\frac{m \times m'}{m \times m'} \right) + \left( \frac{m \times x_m' - m' \times x_m}{m \times m'} \right) \\[10pt]

\implies x &= (y_m' - y_m)\left(\frac{m \times m'}{m - m'}\right) + \left(\frac{m \times x_m' - m' \times x_m}{m - m'}\right) \\[10pt]

\implies x &= \frac{(y_m' - y_m)(m \times m') + (m \times x_m' - m' \times x_m)}{m - m'}

\end{align*}
$$

Para a coordenada $y$ basta usar alguma das equações reduzidas da reta com a coordenada $x$:

$$y = y_m -\frac{(x - x_m)}{m}$$

**Importante**: Se as coordenadas $y$ de uma das estrelas não mudar, ou seja $y_{antes} = y_{depois}$, não será possível calcular o coeficiente angular $m$ da reta perpendicular (divisão por zero). Note que nesse caso, a reta entre as posições da estrela é uma reta horizontal, e a reta perpendicular é uma reta vertical que passa pelo Buraco Negro. A coordenada $x$ é o ponto médio entre as posições. Com a equação do coeficiente angular $m'$ da outra estrela, use a coordenada $x$ para encontrar $y$.