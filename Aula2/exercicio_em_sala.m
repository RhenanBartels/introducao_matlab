function exercicio_em_sala()
m = randn(10, 10);
[l1, l2] = funcao_um(m)
[m1, m2, m3] = estatistica_matriz(m)
plot_matriz(m)
m = randn(4, 100);
subplot_matriz(m)
end

function [linha_1, linha_2] = funcao_um(matriz)
    linha_1 = matriz(1, :);
    linha_2 = matriz(end, :);
end

function [valor_min, valor_max, valor_medio] =  estatistica_matriz(matriz)
   valor_min = min(matriz');
   valor_max = max(matriz');
   valor_medio = mean(matriz');
end

function plot_matriz(matriz)
    figure
    plot(matriz')
end

function subplot_matriz(matriz)
[linha, coluna] = size(matriz);

for valor = 1:linha
    subplot(linha, coluna, valor)
    plot(matriz(valor, :))
end
end