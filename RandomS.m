function [arrayout] = RandomS(arrayinput)%���������� ��� ������������
    sentBits = arrayinput; % ������ ���
    txSeq = polynomial;
    sentData(1:length(sentBits)) = 0;
    for i=1:length(sentBits)
        res = xor(txSeq(end),txSeq(end-1));
        sentData(i) = xor(sentBits(i),res); 
        txSeq = [res txSeq(1:end-1)];% ����
    end
    arrayout=res;
end