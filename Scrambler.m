%> �������� workspace
clear all;
%> �������� ��������
close all;
%> �������� Command Window
clc;
polynomial = [1 0 0 1 0 1 0 1 0 0 0 0 0 0 0];
sentBits = randi([0 1], 1, 999); % ��������� ���
txSeq = polynomial;
sentData(1:length(sentBits)) = 0;
for i=1:length(sentBits)
    res = xor(txSeq(end),txSeq(end-1));
    sentData(i) = xor(sentBits(i),res); %�� ��� ����� ����������� �� ������
    txSeq = [res txSeq(1:end-1)];% ����
end
modData = QAM(sentData); % ���������
rsData = DEQAM(modData, 1, 0)';% �����������
rsSeq = polynomial;
rsBits(1:length(rsData)) = 0;
for i=1:length(rsData)
    res = xor(rsSeq(end),rsSeq(end-1));
    rsBits(i) = xor(rsData(i),res);
    rsSeq = [res rsSeq(1:end-1)];
end

ERR = Nerr(sentBits, rsBits)