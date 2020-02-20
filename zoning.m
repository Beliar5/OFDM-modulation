function [arrayout] = zoning(arrayinput)%Ну это решение на костылях зонирование без векторов
global numstar;
    shift=sqrt(numstar);
    arrayinput = arrayinput+shift+1i*shift-1-1i;
    arrayinput = arrayinput/2;
    RE=real(arrayinput);
    IM=imag(arrayinput);
    RE=round(RE);
    IM=round(IM);
    ARE=(RE<0);
    RE=RE-ARE.*RE;
    ARE=(RE>shift-1);
    RE=RE-ARE.*RE+shift*ARE;
    ARE=(IM<0);
    IM=IM-ARE.*IM;
    ARE=(IM>shift-1);
    IM=IM-ARE.*IM+shift*ARE;
    arrayout=RE+1i*IM;
    arrayout=arrayout*2-shift-1i*shift+1+1i;
end

