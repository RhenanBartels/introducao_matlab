function [media, desv_pad, variancia] = estatistica(vetor_entrada)
    media = mean(vetor_entrada);
    desv_pad = std(vetor_entrada);
    variancia = desv_pad ^ 2;
end