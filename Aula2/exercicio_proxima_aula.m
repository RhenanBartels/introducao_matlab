function exercicio_proxima_aula()
close all 
tudo_certo = 1;
m = randn(10, 100);

saida = indices_matriz_1(m);

if ~isnan(saida)
    if saida == m(1, 9, :)
    else
        errordlg(['Algo de errado ocorreu na funcao indices_matriz_1.'...
            'Tente mudar alguma coisa!'],'Erro',  'modal')
        tudo_certo = 0;
    end
else
    errordlg(['Algo de errado ocorreu na funcao indices_matriz_1.'...
        'Tente mudar alguma coisa!'],'Erro',  'modal')
    tudo_certo = 0;
end

saida = indices_matriz_2(m);

if ~isnan(saida)
    if saida == m(:, 1, end)
    else
        errordlg(['Algo de errado ocorreu na funcao indices_matriz_2.'...
            'Tente mudar alguma coisa!'],'Erro',  'modal')
        tudo_certo = 0;
    end
else
    errordlg(['Algo de errado ocorreu na funcao indices_matriz_2.'...
        'Tente mudar alguma coisa!'],'Erro',  'modal')
    tudo_certo = 0;
end

saida = indices_matriz_3(m, 4, 5);

if ~isnan(saida)
    if saida == m(4, 5)
    else
        errordlg(['Algo de errado ocorreu na funcao indices_matriz_3.'...
            'Tente mudar alguma coisa!'],'Erro',  'modal')
        tudo_certo = 0;
    end
else
    errordlg(['Algo de errado ocorreu na funcao indices_matriz_3.'...
        'Tente mudar alguma coisa!'],'Erro',  'modal')
    tudo_certo = 0;
end


saida = indices_matriz_4(m);

if ~isnan(saida)
    if saida == m(2:end, :)
    else
        errordlg(['Algo de errado ocorreu na funcao indices_matriz_4.'...
            'Tente mudar alguma coisa!'],'Erro',  'modal')
        tudo_certo = 0;
    end
else
    errordlg(['Algo de errado ocorreu na funcao indices_matriz_4.'...
        'Tente mudar alguma coisa!'],'Erro',  'modal')
    tudo_certo = 0;
end

saida = indices_matriz_5(m);

if ~isnan(saida)
    if saida == m(2:5, 3:6)
    else
        errordlg(['Algo de errado ocorreu na funcao indices_matriz_5.'...
            'Tente mudar alguma coisa!'],'Erro na soma',  'modal')
        tudo_certo = 0;
    end
else
    errordlg(['Algo de errado ocorreu na funcao indices_matriz_5.'...
        'Tente mudar alguma coisa!'],'Erro',  'modal')
    tudo_certo = 0;
end

v = randn(1, 100);
plot_1(v)

fig_obj = findobj(0, 'Type', 'Figure');

axes_obj = findobj(fig_obj(1), 'Type', 'axes');

if isempty(axes_obj)
    errordlg(['Algo de errado ocorreu na funcao plot_1.'...
        'Tente mudar alguma coisa!'],'Erro',  'modal')
    tudo_certo = 0;
else
    line_obj = findobj(axes_obj, 'Type' ,'Line');
    line_color = get(line_obj, 'Color');
    
    if ~isequal(line_color, [1 0 0])
        errordlg(['Algo de errado ocorreu na funcao plot_1.'...
            'Tente mudar alguma coisa!'],'Erro',  'modal')
        tudo_certo = 0;
    end
    
end

plot_2(v)

fig_obj = findobj(0, 'Type', 'Figure');

axes_obj = findobj(fig_obj(1), 'Type', 'axes');

if isempty(axes_obj)
    errordlg(['Algo de errado ocorreu na funcao plot_2.'...
        'Tente mudar alguma coisa!'],'Erro',  'modal')
    tudo_certo = 0;
else
    line_obj = findobj(axes_obj, 'Type' ,'Line');
    line_color = get(line_obj, 'Color');
    xlabel_obj = get(axes_obj,'xlabel');
    xlabel_text = get(xlabel_obj, 'String');
    ylabel_obj = get(axes_obj,'ylabel');
    ylabel_text = get(ylabel_obj, 'String');
    
    if ~isequal(line_color, [0 1 0]) || isempty(xlabel_text) ||...
            isempty(ylabel_text)
        errordlg(['Algo de errado ocorreu na funcao plot_2.'...
            'Tente mudar alguma coisa!'],'Erro',  'modal')
        tudo_certo = 0;
    end
    
      
end

v2 = linspace(1, 3, 100);
plot_3(v2,v)

fig_obj = findobj(0, 'Type', 'Figure');

axes_obj = findobj(fig_obj(1), 'Type', 'axes');

if isempty(axes_obj)
    errordlg(['Algo de errado ocorreu na funcao plot_3.'...
        'Tente mudar alguma coisa!'],'Erro',  'modal')
    tudo_certo = 0;
else
    line_obj = findobj(axes_obj, 'Type' ,'Line');
    xdata = get(line_obj, 'xdata');
    ydata = get(line_obj, 'ydata');
    xlabel_obj = get(axes_obj,'xlabel');
    xlabel_text = get(xlabel_obj, 'String');
    ylabel_obj = get(axes_obj,'ylabel');
    ylabel_text = get(ylabel_obj, 'String');
    
    if ~isequal(v2,xdata) || ~isequal(v, ydata)
        errordlg(['Algo de errado ocorreu na funcao plot_3.'...
            'Tente mudar alguma coisa!'],'Erro',  'modal')
        tudo_certo = 0;
    end
    
    if isempty(xlabel_text) || isempty(ylabel_text)
        errordlg(['Algo de errado ocorreu na funcao plot_3.'...
            'Tente mudar alguma coisa!'],'Erro',  'modal')
        tudo_certo = 0;
    end
    
end

v2 = randn(1, 100);
plot_4(v2,v)

fig_obj = findobj(0, 'Type', 'Figure');

axes_obj = findobj(fig_obj(1), 'Type', 'axes');

if isempty(axes_obj)
    errordlg(['Algo de errado ocorreu na funcao plot_4.'...
        'Tente mudar alguma coisa!'],'Erro',  'modal')
    tudo_certo = 0;
else
    lines = findobj(axes_obj, 'Type', 'line'); 
   
    segunda_cor = [1 1 1 1 1];
    primeira_cor = get(lines(1), 'Color');
    try
    segunda_cor = get(lines(2), 'Color');
    catch
    end
    if isempty(xlabel_text) || isempty(ylabel_text) ||...
            isequal(primeira_cor, segunda_cor) || length(lines) ~= 2
        errordlg(['Algo de errado ocorreu na funcao plot_4.'...
            'Tente mudar alguma coisa!'],'Erro',  'modal')
        tudo_certo = 0;
    end
    
end

v2 = randn(1, 100);
v3 = randn(1, 100);
v4 = randn(1, 100);


plot_5(v, v2, v3, v4)


fig_obj = findobj(0, 'Type', 'Figure');

axes_obj = findobj(fig_obj, 'Type', 'axes');

if isempty(axes_obj)
    errordlg(['Algo de errado ocorreu na funcao plot_5.'...
        'Tente mudar alguma coisa!'],'Erro',  'modal')
    tudo_certo = 0;
else
    nAxes = findobj(fig_obj, 'Type', 'axes');
    
    if length(nAxes) < 8
        errordlg(['Algo de errado ocorreu na funcao plot_5.'...
            'Tente mudar alguma coisa!'],'Erro',  'modal')
        tudo_certo = 0;
    end
end
if tudo_certo
    msgbox('Tudo Funcionou Corretamente!', 'Tudo Certo')
end

end

%COMECE A PARTIR DAQUI

%Edite essa funcao para retornar a primeira e a penultima linha completa.
%Dica: use a funcao size para descobrir a dimensao da matriz -> [M,N] =
%size(matriz)
function resultado = indices_matriz_1(matriz)
    
    resultado = NaN;
end

%Edite essa funcao para retornar a primeira e a ultima coluna completa
function resultado = indices_matriz_2(matriz)
    resultado = NaN;
end

%Edite essa funcao para retornar o elemento na posicao m,n
function resultado = indices_matriz_3(matriz, m, n)
    resultado = NaN;
end

%Edite essa funcao para retornar todas as colunas a partir da 2 linha
function resultado = indices_matriz_4(matriz)
    resultado = NaN;
end

%Edite essa funcao para retornar as colunas a partir da 3 ate a 6 da
%segunda linha ate a quinta linha
function resultado = indices_matriz_5(matriz)
    resultado = NaN;
end

%Edite essa funcao para plotar um vetor na cor vermelha
function plot_1(vetor)
figure;

end

%Edite essa funcao para plotar um vetor na cor verde. Coloque tambem nome
%para os eixos x e y (escolha um nome qualquer).
function plot_2(vetor)
figure;

end

%Edite essa funcao para plotar um vetor em funcao do outro na cor preta
%Coloque tambem o nome dos eixos.
function plot_3(vetor_eixo_x, vetor_eixo_y)
figure;


end

%Edite essa funcao para plotar um vetor junto com outro.
%Use a funcao hold on e hold off. Cada plot com uma cor diferente
function plot_4(vetor_1, vetor_2)
figure;

%hold on

%hold off
end

%Edite essa funcao para plotar cada um dos 4 vetores em um eixo diferente.
%Use a funcao subplot
function plot_5(vetor_1, vetor_2, vetor_3, vetor_4)
figure;

end