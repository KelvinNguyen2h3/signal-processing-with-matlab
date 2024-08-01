% Compute the impulse response
% {T}: y[n]-0.4y[n-1]+0.75y[n-2] = 2.2403x[n]+2.4908x[n-1]+2.2403x[n-2].
clf;
num = [2.2403 2.4908 2.2403];
den = [1 -0.4 0.75];
h = impz(num,den);
% Draw
stem(h);
xlabel('Time index n'); ylabel('Amplitude');
title('Impulse Response'); grid;


