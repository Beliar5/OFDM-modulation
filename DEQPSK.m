function [arrayout] = DEQPSK(arrayinput)% QPSK �� ��������� ��������� �������� � ���, ��������, ����������� ���������� ����� ������� �����������
     NumofCols = size(arrayinput,2);
     z=0;
   while z < NumofCols
       z=z+1;
       arrayout(2*z-1)=1/2-real(arrayinput(z))*1/2;
       arrayout(2*z)=1/2-imag(arrayinput(z))*1/2;
   end
end

