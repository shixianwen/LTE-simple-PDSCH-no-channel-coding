snr1 = snr;
ourdata=[ones(1,10)*8,ones(1,6)*23.04,ones(1,10)*34.56];
actualdata=[ones(1,10)*7.2,ones(1,6)*21.6,ones(1,10)*32.4];
h1=plot(snr1,ourdata,'b-');
xlabel('Eb/No (dB)','FontSize',12);
ylabel('DATARATE MB/S','FontSize',12);
title('Datarate of simulation results and real situation');

hold on;
h2=plot(snr1,actualdata,'r--');
legend([h1,h2],'simulation','reality');
