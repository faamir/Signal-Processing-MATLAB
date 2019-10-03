%Bessel (bilinear)
%in barname baraye mohase Bessel filter ast.baraye ejra evaluate cell & advance ra
%bezanid.
clc;
clear all;
close all;
Wp=2*tan(0.15*pi)/20;
Ws=2*tan(0.2*pi)/20;
Rp=0.19;
Rs=0.2;
[N,Wn]=buttord(Wp,Ws,Rp,Rs);
%[N,Wn]=buttord(Wp,Ws,Rp,Rs);

[b,a] = besself(N,Wn)
%[b,a]=besself(N,Wn)

H=tf(b,a,2000);
H
figure(1);
freqs(b,a)
figure(2);
grpdelay(b,a)
figure(3);bode(b,a)

%% (invariant)
clc;
clear all;
close all;
Wp=0.3*pi/20;
Ws=0.4*pi/20;
Rp=0.19;
Rs=0.2;
[N,Wn]=buttord(Wp,Ws,Rp,Rs);
%[N,Wn]=buttord(Wp,Ws,Rp,Rs);
[b,a] = besself(N,Wn)
%[b,a]=besself(N,Wn)

H=tf(b,a,2000);
H
figure(1);
freqs(b,a)
figure(2);
grpdelay(b,a)
figure(3);bode(b,a)