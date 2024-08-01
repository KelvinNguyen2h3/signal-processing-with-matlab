clf;
% (H) y[n]+1.6 y[n ? 1] + 2.28 y[n ? 2] + 1.325 y[n ? 3] + 0.68 y[n ? 4] = 0.06 x[n] ? 0.19 x[n ? 1] + 0.27 x[n ? 2] ? 0.26 x[n ? 3] + 0.12 x[n ? 4]
num = [0.06 -0.19 0.27 -0.26 0.12];
den = [1 1.6 2.28 1.325 0.68];
% stage 1: y1[n]+0.9 y1[n ? 1] + 0.8 y1[n ? 2] = 0.3 x[n] ? 0.2 x[n ? 1] + 0.4 x[n ? 2]
num1 = [0.3 -0.2 0.4];
den1 = [1 0.9 0.8];
% stage 2: y2[n]+0.7 y2[n ? 1] + 0.85 y2[n ? 2] = 0.2 y1[n] ? 0.5 y1[n ? 1] + 0.3 y1[n ? 2]
num2 = [0.2 -0.5 0.3];
den2 = [1 0.7 0.85];

n = 0:40;
x = [1 zeros(1,40)];

y1 = filter(num1,den1,x);
y2 = filter(num2,den2,y1);

y = filter(num,den,x);

d = y - y2;

% Draw
subplot(3,1,1);
stem(n,y);
ylabel('Amplitude');
title('Output of Realization'); grid;
subplot(3,1,2);
stem(n,y2)
ylabel('Amplitude');
title('Output of Cascade Realization'); grid;
subplot(3,1,3);
stem(n,d)
xlabel('Time index n');ylabel('Amplitude');
title('Difference Signal'); grid;


