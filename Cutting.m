function [arrayout] = Cutting(arrayinput) % ��� ������� ����� ��� �� n_carriers ����������
    global n_carriers;
    ofdmS=size(arrayinput,2);
    z=0;
    arrayout=[];
    NumberIt=ofdmS/n_carriers;
    while z<NumberIt
        z=z+1;
        arrayout=[arrayout; arrayinput(1:n_carriers)];
        arrayinput=[arrayinput(n_carriers+1:end)];
    end
end

