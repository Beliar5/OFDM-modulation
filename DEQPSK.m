function [arrayout] = DEQPSK(arrayinput)% QPSK из коплекной плоскости вобратно в код, внимание, обязательно пропустить через жесткое зонирование
     NumofCols = size(arrayinput,2);
     z=0;
   while z < NumofCols
       z=z+1;
       arrayout(2*z-1)=1/2-real(arrayinput(z))*1/2;
       arrayout(2*z)=1/2-imag(arrayinput(z))*1/2;
   end
end

