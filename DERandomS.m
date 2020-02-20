function [arrayout] = DERandomS(arrayinput)% Дерандомизатор на полиноме
    rsSeq = polynomial;
    rsBits(1:length(arrayinput)) = 0;
    for i=1:length(arrayinput)
        res = xor(rsSeq(end),rsSeq(end-1));
        rsBits(i) = xor(arrayinput(i),res);
        rsSeq = [res rsSeq(1:end-1)];
    end
    arrayout=rsBits;
end

