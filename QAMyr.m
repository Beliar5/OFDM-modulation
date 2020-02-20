function [arrayout] = QAMyr(arrayinput)% Mapping 64QAM
    data = (0:2^6-1);
    bits = de2bi(data, 6);
    bits = reshape(bits(:,end:-1:1).', 1, []);
    NumofCols = size(bits,2);
    z=0;
    while z < NumofCols/6
        z = z+1;
        AllNum(z) = 4*(-1)^(bits(6*z-5))+1i*4*(-1)^(bits(6*z-4))+2*(-1)^(bits(6*z-5)+bits(6*z-3))+1i*2*(-1)^(bits(6*z-4)+bits(6*z-2))+(-1)^(bits(6*z-5)+bits(6*z-3)+bits(6*z-1))+1i*(-1)^(bits(6*z-4)+bits(6*z-2)+bits(6*z));
    end
    NumofCols = size(arrayinput,2);
    z=0;
    while z < NumofCols/6
        z = z+1;
        arrayout(z) = 4*(-1)^(arrayinput(6*z-5))+1i*4*(-1)^(arrayinput(6*z-4))+2*(-1)^(arrayinput(6*z-5)+arrayinput(6*z-3))+1i*2*(-1)^(arrayinput(6*z-4)+arrayinput(6*z-2))+(-1)^(arrayinput(6*z-5)+arrayinput(6*z-3)+arrayinput(6*z-1))+1i*(-1)^(arrayinput(6*z-4)+arrayinput(6*z-2)+arrayinput(6*z));
    end
    scatterplot(arrayout)
    ylabel('Imaginary')
    xlabel('Real') 
    axis([-8 8 -8 8])
    text(real(AllNum)-0.8, imag(AllNum)-0.4, dec2bin(data))
end

