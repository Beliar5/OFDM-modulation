function [arrayout] = KillingZerous(arrayinput,db) % Тут мы убираем нули(Из n_fft в n_carriers)
    z=max(abs(arrayinput));
    arrayout=(abs(arrayinput)<z/(10^(0.1*db)));
    arrayout=(arrayout<1);
    arrayout=arrayinput.*arrayout;
    arrayout(arrayout==0)=[];
    end

