clear
clc
close all
global numstar n_carriers n_fft polynomial;
n_fft=1024;%% опционально можно еще 2048
n_carriers=400;
numstar=16;
polynomial = [1 0 0 1 0 1 0 1 0 0 0 0 0 0 0];
inputbits = randi(2,1,3*n_carriers*log2(numstar))-1;
vectorqam = QAM(inputbits);
outputbits=travel(vectorqam);
%plot(xor(inputbits,outputbits));