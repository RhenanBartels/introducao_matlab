function plot_subplot()
    %Vetor com 100 elementos
    tempo = 1:100;

    %Vetor com 100 elementos aleatorios
    sinal_um = randn(1, 100);

    %Vetor com 100 elementos aleatorios
    sinal_dois = randn(1, 100);
    
    figure;
    %Subplot com 2 linas e 1 coluna
    subplot(2, 1, 2)
    plot(tempo, sinal_um, 'k')
    
    xlabel('Tempo (s)')
    ylabel('EMG (mV)')
    
    subplot(2, 1, 1)
    plot(tempo, sinal_dois)
    xlabel('Tempo (s)')
    ylabel('Angulo (rad/s)')
    
end
