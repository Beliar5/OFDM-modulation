function [arrayout] = ReadFile(arrayinput)% �������� �������� ����� 'C:\Users\User\Desktop\Levichev\1.jpg'
fid = fopen('C:\Users\User\Desktop\Levichev\1.jpg','r','b');% ��� �� ����� ���� ����� ��������� �������� �����
A = fread(fid);
q=length(A);
C=zeros(q,8);
D=zeros(1,q*8);%reshape???
for i=1:q
    for k=8:-1:1
        C(i,k)= bitget(A(i),k);
    end
end
arrayout=C;
end

