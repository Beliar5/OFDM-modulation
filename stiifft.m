function [arrayout] = stiifft(arrayinput)
    global n_fft;
    NumberIt=size(arrayinput,1);
    z=0;
    arrayout=[];
    while z<NumberIt
        z=z+1;
        arrayout=[arrayout arrayinput(z,1:n_fft)];
    end
end

