% Exponential signal
clf;
n = 0:35; a = 1.2; K = 0.2;
x = K*a.^n;
stem(n,x);
xlabel('Time index n');ylabel('Amplitude');
