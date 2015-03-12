%script que cria uma janela de dialogo que pede o peso
%e idade do usu?rio

perguntas = {'Peso', 'Altura'}; %{} cria um cell array. Veremos mais tarde.
titulo = 'Anamnese';
nLinhas = 1
respostas_padrao = {'70', '1.75'};

%Cria a janela de dialogo.
respostas = inputdlg(perguntas, titulo, nLinhas, respostas_padrao);
