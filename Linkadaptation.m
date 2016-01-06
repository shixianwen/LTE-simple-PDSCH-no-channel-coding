function [Modulation,Eb] = Linkadaptation(Eb_No_dB)
%��̬��ѡ����Ʒ�ʽ�����Ҹı�Es = 1; % ��QPSK, 16QAM���Ʒ�ʽ��,��������������һ��  Eb = Es/Modulation; % ÿ��������
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


