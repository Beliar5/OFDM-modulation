function [arrayout] = DEQAMh(arrayinput) % Функция которая делает то, что делает mapper, только в друшую сторону
global numstar;
    arrayinput=zoning(arrayinput);% Жесткое решение(старое, еще не в виде вектора)
    switch(numstar)% Выбор сохвездия, либо warning если не написано
        case 4
           arrayout = DEQPSK(arrayinput);
        case 16
           arrayout = DEQAMqy(arrayinput);
        case 64
           arrayout = DEQAMyr(arrayinput);
        otherwise
             warning('missing constellations or not written in function DEQAM.')
    end
end

