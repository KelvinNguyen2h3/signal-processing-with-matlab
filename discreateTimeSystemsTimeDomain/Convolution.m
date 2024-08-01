clf;
% way 1: conv
h = [4 -1 2 3]; %len h = 4
x = [1 -2 3]; % len x = 3
y = conv(h, x);
n = 0:5; % len y = 0:5 = 6 (=4+3-1)
subplot(2,1,1);
stem(n, y);
xlabel('Time index n'); ylabel('Amplitude');
title('Output Obtained by Convolution'); grid;
% way 2: filter
x1 = [x zeros(1,6-3)];
y1 = filter(h,1,x1);
subplot(2,1,2);
stem(n, y1);
xlabel('Time index n'); ylabel('Amplitude');
title('Output Obtained by Filtering'); grid;
%run