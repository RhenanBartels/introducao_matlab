%vetor tempo com 1 segundo e 1000 amostras
tempo = linspace(0, 1, 1000);

%seno com 3Hz
seno = sin(2 * pi * tempo * 3);
%cosseno com 3Hz
cosseno = cos(2 * pi * tempo * 3);

figure;
plot(tempo, seno, 'r'); %'r' faz plotar em vermelho

%Plot na mesma figura
%sem sobrepor
hold on

plot(tempo, cosseno, 'g')  %--'g' faz plotar em verde

%Nao pode esquecer!!
hold off
