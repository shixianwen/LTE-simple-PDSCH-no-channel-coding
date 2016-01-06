function [Modulation,Eb] = Linkadaptation(Eb_No_dB)
%动态的选择调制方式，并且改变Es = 1; % 在QPSK, 16QAM调制方式下,符号能量都被归一化  Eb = Es/Modulation; % 每比特能量
%   Eb_No_dB<4.3db  -> QPSK Modulation = 2
%   4.3db<Eb_No_dB<10.3db  -> 16QAM Modulation =4
%   10.3db<Eb_No_dB  -> 64QAM Modulation =6
if(Eb_No_dB<4.3)
    Modulation = 2;
elseif (4.3<Eb_No_dB<10.3)
        Modulation =4;
else Modulation =6;
end
Eb = 1/Modulation;


