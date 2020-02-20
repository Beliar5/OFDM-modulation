function [arrayout] = DEQAMyr(arrayinput)% 64QAM из коплекной плоскости вобратно в код, внимание, обязательно пропустить через жесткое зонирование
    NumofCols = size(arrayinput,2);
    z=0;
    while z < NumofCols
       z=z+1;
       arrayout(6*z-5)=1/2-real(arrayinput(z))/abs(real(arrayinput(z)))*1/2;
       arrayout(6*z-4)=1/2-imag(arrayinput(z))/abs(imag(arrayinput(z)))*1/2;
       arrayout(6*z-3)=1/2-1/2*sign((abs(real(arrayinput(z)))-4));
       arrayout(6*z-2)=1/2-1/2*sign((abs(imag(arrayinput(z)))-4));
       arrayout(6*z-1)=1/2*(3-abs(abs(real(arrayinput(z)))-4));
       arrayout(6*z)=1/2*(3-abs(abs(imag(arrayinput(z)))-4));
    end
end