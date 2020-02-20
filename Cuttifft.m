function [arrayout] = Cuttifft(arrayinput) % ��� ������� ��������� ���������� �� n_fft � OFDM
    global n_fft;
    NumberIt=size(arrayinput,1);
    z=0;
    arrayout=[];
    while z<NumberIt
        z=z+1;
        arrayout=[arrayout; ifft(arrayinput(z,1:end),n_fft)];    
    end
end

