%FIR
%in barname baraye mohase filter FIR ast.baraye ejra evaluate cell ra
%bezanid.
clc
clear all
close all
Wp=0.3*pi/20;
Ws=0.4*pi/20;
Rp=0.19;
Rs=0.2;
[N,Wn]=buttord(Wp,Ws,Rp,Rs);
b = fir1(N,Wn);
figure(1);
freqz(b,1)
figure(2);
grpdelay(b)
