function [arrayout] = QPSK(arrayinput)%Ненормированный QPSK
    data = (0:2^2-1);
    bits = de2bi(data, 2);
    bits = reshape(bits(:,end:-1:1).', 1, []);
    z=0;
    NumofCols = size(bits,2);
    while z < NumofCols/2
        z=z+1;
        AllNum(z) = (-1)^(bits(2*z-1))+1i*(-1)^(bits(2*z));
    end
     z=0;
    NumofCols = size(arrayinput,2);
    while z < NumofCols/2
        z=z+1;
        arrayout(z) = (-1)^(arrayinput(2*z-1))+1i*(-1)^(arrayinput(2*z));
    end
    scatterplot(arrayout)
    ylabel('Imaginary')
    xlabel('Real') 
    axis([-2 2 -2 2])
    text(real(AllNum)-0.1, imag(AllNum)-0.1, dec2bin(data))
end

