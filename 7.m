%frequency response
%in barname baraye mohase frequency response ast.baraye ejra evaluate cell ra
%bezanid.
%b0 = 0.05634;
clc;
clear all;
close all;

b0=1;
b1=[1 1/4];
%b1=[1 2];
%b1=[1 1/10];
a=[1 -1/2];
%a=[1 -2];
%a=[1 -1/10];
b = b0*b1
H1=tf(b,a,10);
[n,m] = freqz(b,a,'whole',2001);
figure(1);
plot(m/pi,20*log10(abs(n)))
y = gca;
y.YLim = [-100 20];
y.XTick = 0:.5:2;
xlabel('Normalized')
ylabel('Magnitude')

figure(2);
freqz(b,a,256,2000)
figure(3);pzmap(H1)
figure(4);bode(b,a)
H1