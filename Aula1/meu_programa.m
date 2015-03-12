valores = [0.97, 0.34, 0.12, 0.8723, 12.245];

tamanho = length(valores);
acumulador = 0;

for indice = 1 : length(valores)
    acumulador = acumulador + valores(indice);
end
 media = acumulador / tamanho;