function pressao_arterial_media = pam(pressao_sistolica, pressao_diastolica)

    %pressao_arterial_media = zeros(1, length(pressao_sistolica));
    for posicao = 1 : length(pressao_sistolica)
        pressao_arterial_media(posicao) = (pressao_sistolica(posicao) + 2 * ...
            pressao_diastolica(posicao)) / 3;
    end

end