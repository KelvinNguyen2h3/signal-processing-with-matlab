% y(n) = 1*x(n) - 1*x(n-1)
clf;
num = [1 -1];
den = 1;
n = -10:20;
x = [zeros(1,10) 1 zeros(1,20)];
y = filter(num, den, x);
subplot(2,1,1);
stem(n, x);
title('Input Signal x(n)');
xlabel('Time index n');
ylabel('Amplitude');
axis([-10 20 -0.5 1.5]);
subplot(2,1,2);
stem(n, y);
title('Output Signal y(n)');
xlabel('Time index n');
ylabel('Amplitude');
axis([-10 20 -1.5 1.5]);