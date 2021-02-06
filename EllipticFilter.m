%Elliptic (bilinear)
%in barname baraye mohase Elliptic filter ast.baraye ejra evaluate cell & advance ra
%bezanid.
clc;
clear all;
close all;
Wp=2*tan(0.15*pi)/20;
Ws=2*tan(0.2*pi)/20;
Rp=0.19;
Rs=0.2;
[N,Wn] = ellipord(Wp,Ws,Rp,Rs);
%[N,Wn]=buttord(Wp,Ws,Rp,Rs);

[b,a] = ellip(N,Rp,Rs,Wp)
%[b,a]=ellip(N,Rs,Wn)

H=tf(b,a,2000);
H
figure(1);
freqz(b,a,256,2000)
figure(2);
grpdelay(b,a)
figure(3);bode(b,a)

%% (invariant)
clc
clear all
close all
Wp=0.3*pi/20;
Ws=0.4*pi/20;
Rp=0.19;
Rs=0.2;
[N,Wn] = ellipord(Wp,Ws,Rp,Rs);
%[N,Wn]=buttord(Wp,Ws,Rp,Rs);
[b,a] = ellip(N,Rp,Rs,Wp)
%[b,a]=ellip(N,Rs,Wn)

H=tf(b,a,2000);
H
figure(1);
freqz(b,a,256,2000)
figure(2);
grpdelay(b,a)
figure(3);bode(b,a)
