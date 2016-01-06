%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%性能评估


save saved_data.mat;    % 保存数据


snr = [Eb_NoStart:Eb_NoInterval:Eb_NoEnd];

% 以下均考虑第u个用户的误比特率性能
u = 1;

% 误比特率性能曲线

err_rate_user = sum(user_bit_err{u},1)./( length(user_bit{u})*N_frame) ;

figure(1);
semilogy(snr,err_rate_user,'b-*'); 
%plot(snr,err_rate_user,'b-*');
hold on ;
grid on ;
xlabel('Eb/No (dB)','FontSize',12);
ylabel('BER','FontSize',12);
title('Multi-user LinkAdaptation System BER~Eb/No Performance Curve');
legend('QPSK:SNR<4.3db 16QAM SNR<10.3db 64QAM SNR>10.3db')
hold on




