 function plot_completo_2()
tempo = linspace(0, 3, 600);
 
emg = randn(1, 600);

figure;

plot(tempo, emg, 'r.')

xlabel('Tempo (s)')

ylabel('EMG (mV)')

title('Sinal EMG')
end