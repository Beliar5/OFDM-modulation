function [arrayout] = KillingZerous(arrayinput,db) % ��� �� ������� ����(�� n_fft � n_carriers)
    z=max(abs(arrayinput));
    arrayout=(abs(arrayinput)<z/(10^(0.1*db)));
    arrayout=(arrayout<1);
    arrayout=arrayinput.*arrayout;
    arrayout(arrayout==0)=[];
    end

