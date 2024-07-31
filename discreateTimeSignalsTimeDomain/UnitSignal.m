% Unit Signal
% U(n) = 1 when n = 0; 0 when n != 0

clf; % clear figure

n = -10:20;
u = [zeros(1,10) 1 zeros(1,20)];

stem(n,u);
xlabel('Time index n'); ylabel('Amplitude');
title('Unit Sample Sequence');
axis([-10 20 0 1.4]);