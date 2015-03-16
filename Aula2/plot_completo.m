function plot_completo()
%vetor tempo com 1 segundos e 100 amostras.
tempo = linspace(0, 1, 100);

%senoide com 5Hz e amplitude 3
senoide = 3 * sin(2 * pi * tempo * 5)

%Cria uma nova janela;
figure;
%plot o vetor senoide em funcao do vetor
%tempo na cor verde
plot(tempo, senoide, 'g')

%Nome do eixo x
xlabel('Tempo (s)')

%Nome do eixo y
ylabel('Seno (t)')

%Titulo
title('Minha senoide')
end