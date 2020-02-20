function [arrayout] = QAMqy(arrayinput) % Mapping 16QAM
    data = (0:2^4-1);
    bits = de2bi(data, 4);
    bits = reshape(bits(:,end:-1:1).', 1, []);
    z=0;
    NumofCols = size(bits,2);
    while z < NumofCols/4
        z = z+1;
        AllNum(z) = 2*(-1)^(bits(4*z-3))+j*2*(-1)^(bits(4*z-2))+(-1)^(bits(4*z-3)+bits(4*z-1))+j*(-1)^(bits(4*z-2)+bits(4*z));
    end% ƒа над формулами можно знатно поорать
    z=0;
    NumofCols = size(arrayinput,2);
    while z < NumofCols/4
        z = z+1;
        arrayout(z) = 2*(-1)^(arrayinput(4*z-3))+j*2*(-1)^(arrayinput(4*z-2))+(-1)^(arrayinput(4*z-3)+arrayinput(4*z-1))+j*(-1)^(arrayinput(4*z-2)+arrayinput(4*z));
    end
    scatterplot(arrayout)
    ylabel('Imaginary')
    xlabel('Real') 
    axis([-4 4 -4 4])  
    text(real(AllNum)-0.4, imag(AllNum)-0.4, dec2bin(data))
end

