function exercicio1()
tudo_certo = 1;

a = 4;
b = 7;

if ~(a + b == soma(a, b))
    errordlg(['Algo de errado ocorreu na funcao soma.'...
        'Tente mudar alguma coisa!'],'Erro na soma',  'modal')
    tudo_certo = 0;
end

a = 23.54;
b = 12.40;

if ~(a - b == subtracao(a, b))
    errordlg(['Algo de errado ocorreu na funcao subtracao.'...
        'Tente mudar alguma coisa!'],'Erro na subtracao',  'modal')
    tudo_certo = 0;
end

a = pi;
b = 154.12;

if ~(a * b == multiplicacao(a, b))
    errordlg(['Algo de errado ocorreu na funcao multiplicaocao.'...
        'Tente mudar alguma coisa!'],'Erro na multiplicacao',  'modal')
    tudo_certo = 0;
end

a = 564.23;

if ~(a / 5 == divisao(a))
    errordlg(['Algo de errado ocorreu na funcao multiplicaocao.'...
        'Tente mudar alguma coisa!'],'Erro na multiplicacao',  'modal')
    tudo_certo = 0;
end

a = 33.124;

if ~(a ^ 8 == expoente(a))
    errordlg(['Algo de errado ocorreu na funcao expoente.'...
        'Tente mudar alguma coisa!'],'Erro na exponenciacao',  'modal')
    tudo_certo = 0;
end

a = 25.56;
b = 45.88;

if igualda(a, b)
    errordlg(['Algo de errado ocorreu na funcao igualdade.'...
        'Tente mudar alguma coisa!'],'Erro na igualdade',  'modal')
    tudo_certo = 0;
end

a = 45.44;

if maior_que(a)
    errordlg(['Algo de errado ocorreu na funcao maior_que.'...
        'Tente mudar alguma coisa!'],'Erro na comparacao',  'modal')
    tudo_certo = 0;
end

a = 18.78;

if ~strcmp(controle_de_fluxo(a), 'ENTRE') || strcmp(controle_de_fluxo(a),...
        'entre') || strcmp(controle_de_fluxo(a), 'Entre')
    
    errordlg(['Algo de errado ocorreu na funcao controle_de_fluxo.'...
        'Tente mudar alguma coisa!'],'Erro no controle de fluxo',  'modal')
    tudo_certo = 0;
end

a = 4:3:20;

if indice_vertor_um(a) == [4, 7, 10, 13];
    errordlg(['Algo de errado ocorreu na funcao indice_vetor_um.'...
        'Tente mudar alguma coisa!'],'Erro no indice',  'modal')
    tudo_certo = 0;
end

a = 'Curso Matlab';

if ~strcmp(indice_vetor_dois(a), 'tlab')
    
    errordlg(['Algo de errado ocorreu na funcao indice_vetor_dois.'...
        'Tente mudar alguma coisa!'],'Erro no indice',  'modal')
    tudo_certo = 0;
end

if tudo_certo
    msgdlg('Tudo Funcionou Corretamente!', 'Tudo Certo', 'modal')
end

end

%Assim como esta funcao, edite as demais para atender o que se pede
function resultado = soma(entrada_1, entrada_2)
    resultado = entrada_1 + entrada_2;
end

%Edite esta funcao para retornar a subtracao de dois numeros fornecidos
function resultado = subtracao(entrada_1, entrada_2)
    %coloque seu codigo aqui:
   
end

%Edite esta funcao para retornar a multiplicacao de dois numeros fornecidos
function resultado = multiplicao(entrada_1, entrada_2)
    %coloque seu codigo aqui:

end


%Edite esta funcao para retornar a divisao de um numero por 5
function resultado = divisao(entrada)
    %coloque seu codigo aqui:

end

%Edite esta funcao para retornar uma entrada elevada a 8
function resultado = expoente(entrada)
    %coloque seu codigo aqui:

end

%Edite esa funcao para retornar TRUE caso as duas entradas sejam
%iguais e retorna FAlSE caso contrario.
function resultado = igualdade(entrada_1, entrada_2)
    
end

%Edite esta funcao para retornar TRUE caso a entrada seja maior que
%12 ou retornar FALSE caso contrario
function resultado = maior_que(entrada)
    %coloque seu codigo aqui:

end

%Edite esta funcao para retornar 'Menor' caso a entrada seja MENOR ou IGUAL
%a 10, retornar 'Entre' caso a etrada for MAIOR que 10 e MENOR que 30
%ou retornar 'MAIOR' caso a entrada for MAIOR que 30.
function resultado = controle_de_fluxo(entrada)
    %coloque seu codigo aqui:

end

%Edite esta funcao para retornar os 4 ultimos elementos de um vetor.
function resultado = indice_vetor_um(entrada)
    %coloque seu codigo aqui:

end


%Edite esta funcao para retorna os N primeios valores de um vertor. 
function resultado = indice_vetor_2(entrada, N)
    %coloque seu codigo aqui:

end
