function [arrayout] = DEQAMh(arrayinput) % ������� ������� ������ ��, ��� ������ mapper, ������ � ������ �������
global numstar;
    arrayinput=zoning(arrayinput);% ������� �������(������, ��� �� � ���� �������)
    switch(numstar)% ����� ���������, ���� warning ���� �� ��������
        case 4
           arrayout = DEQPSK(arrayinput);
        case 16
           arrayout = DEQAMqy(arrayinput);
        case 64
           arrayout = DEQAMyr(arrayinput);
        otherwise
             warning('missing constellations or not written in function DEQAM.')
    end
end

