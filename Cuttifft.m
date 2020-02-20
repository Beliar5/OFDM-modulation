function [arrayout] = Cuttifft(arrayinput) % Тут функция расширяет поднесущую на n_fft в OFDM
    global n_fft;
    NumberIt=size(arrayinput,1);
    z=0;
    arrayout=[];
    while z<NumberIt
        z=z+1;
        arrayout=[arrayout; ifft(arrayinput(z,1:end),n_fft)];    
    end
end

