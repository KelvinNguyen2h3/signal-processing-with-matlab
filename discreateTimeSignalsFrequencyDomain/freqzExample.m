% introduction frequency domain
clf;
w = -4*pi:8*pi/511:4*pi;
num = [2 1];
den =[1 -0.6];
h = freqz(num, den, w);
% draw
subplot(3,1,1);
plot(w/pi,real(h)); grid;
title('Real part of H(e^{j\omega})');
xlabel('\omega /\pi'); ylabel('Amplitude');
subplot(3,1,2);
plot(w/pi,imag(h)); grid;
title('Imaginary part of H(e^{j\omega})');
xlabel('\omega /\pi'); ylabel('Amplitude');
subplot(3,1,3);
plot(w/pi,angle(h)); grid;
title('Phase Spectrum of H(e^{j\omega})');
xlabel('\omega /\pi'); ylabel('Phase in radians');

