function [arrayout] = smartFFT(arrayinput)
    global n_fft;
    NumberIT=size(arrayinput,1);
    z=0;
    arrayout=[];
    while z<NumberIT
        z=z+1;
        arrayout=[arrayout fft(arrayinput(z,1:n_fft))];
    end
end

