% Signal Smoothing by Averaging
clf;
R = 51; % Time index n
m = 0:(R-1);
d = 0.8*(rand(R,1)-0.5);
s = 2*m.*(0.9.^m);
x = s + d';
subplot(2,1,1);
plot(m,d','r-',m,s,'g--',m,x,'b-.');
legend('d[n]','s[n]','x[n]');
subplot(2,1,2);
x1 = [0 0 x]; x2 = [0 x 0];  x3 = [x 0 0];
y = (x1+x2+x3)/3;
plot(m,y(2:R+1),'r-',m,x,'b-.');
legend('y[n]','x[n]');