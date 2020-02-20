%> Отчистка workspace
clear all;
%> Закрытие рисунков
close all;
%> Отчистка Command Window
clc;
polynomial = [1 0 0 1 0 1 0 1 0 0 0 0 0 0 0];
sentBits = randi([0 1], 1, 999); % генерация бит
txSeq = polynomial;
sentData(1:length(sentBits)) = 0;
for i=1:length(sentBits)
    res = xor(txSeq(end),txSeq(end-1));
    sentData(i) = xor(sentBits(i),res); %То что будет сравнваться на выходе
    txSeq = [res txSeq(1:end-1)];% ЦИКЛ
end
modData = QAM(sentData); % модуляция
rsData = DEQAM(modData, 1, 0)';% демодуляция
rsSeq = polynomial;
rsBits(1:length(rsData)) = 0;
for i=1:length(rsData)
    res = xor(rsSeq(end),rsSeq(end-1));
    rsBits(i) = xor(rsData(i),res);
    rsSeq = [res rsSeq(1:end-1)];
end

ERR = Nerr(sentBits, rsBits)