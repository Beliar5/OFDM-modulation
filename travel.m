function [arrayout] = travel(arrayinput)% Тут прописан весь путь
Cuts = Cutting(arrayinput);
CutsIFFT = Cuttifft(Cuts);
STIIFFT = stiifft(CutsIFFT);
DESTIIFFT = destiifft(STIIFFT);
arrayFFT = smartFFT(DESTIIFFT);
Final = KillingZerous(arrayFFT,1);
arrayout = DEQAMh(Final);
end

