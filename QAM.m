function [arrayout] = QAM(arrayinput)
    global numstar;
    switch(numstar)
        case 4
           arrayout = QPSK(arrayinput);
        case 16
           arrayout = QAMqy(arrayinput);
        case 64
           arrayout = QAMyr(arrayinput);
        otherwise
             warning('missing constellations or not written in function QAM.')
    end
end

