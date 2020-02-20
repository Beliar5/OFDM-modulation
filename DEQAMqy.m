function [arrayout] = DEQAMqy(arrayinput)% 16QAM из коплекной плоскости вобратно в код, внимание, обязательно пропустить через жесткое зонирование
    NumofCols = size(arrayinput,2);
    z=0;
    while z < NumofCols
       z=z+1;
       arrayout(4*z-3)=1/2-sign(real(arrayinput(z)))*1/2;
       arrayout(4*z-2)=1/2-sign(imag(arrayinput(z)))*1/2;
       arrayout(4*z-1)=1/2*(3-abs(real(arrayinput(z))));
       arrayout(4*z)=1/2*(3-abs(imag(arrayinput(z))));
    end
end

