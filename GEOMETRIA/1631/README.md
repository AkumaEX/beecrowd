# Notas

### Rascunho da Solução

Se a linha passa através de dois pontos $P_1=(x_1, y_1)$ e $P_2=(x_2, y_2)$, então a distância do ponto $P=(x, y)$ da linha é:

$$distância(P_1, P_2, P)=\frac{(x_2-x_1)(y-y_1)-(x-x_1)(y_2-y_1)}{\sqrt{(x_2-x_1)^2+(y_2-y_1)^2}}$$

A função retorna um valor positivo se $P$ está à esquerda da linha formada por $P_1$ e $P_2$ e negativo caso $P$ esteja à direita. Logo basta somar todas as distâncias dos pontos de cada configuração de linha e retornar a menor soma das distâncias.