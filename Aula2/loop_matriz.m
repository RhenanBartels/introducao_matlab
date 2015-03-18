function loop_matriz(matriz)
[numero_linhas, numero_colunas] = size(matriz);

for linha = 1:numero_linhas
    matriz(linha, :)
end

for coluna = 1:numero_colunas
    matriz(:, coluna)
end

end