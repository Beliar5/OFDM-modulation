function [arrayout] = destiifft(arrayinput)
    global n_fft;
    ofdmS=size(arrayinput,2);
    z=0;
    arrayout=[];
    NumberIt=ofdmS/n_fft;
    while z<NumberIt
        z=z+1;
        arrayout =[arrayout; arrayinput(1,1:n_fft)];
        arrayinput=[arrayinput(n_fft+1:end)];    
    end
end

